/// ChatRoomViewModel - Presentation Layer
///
/// **역할: UI 상태 관리 및 사용자 인터랙션 처리**
///
/// - SignalR Stream 구독 → 실시간 메시지 수신
/// - UseCase 호출 → 비즈니스 로직 실행
/// - AsyncValue<ChatRoomDetailUiModel> → UI 상태 관리
///
/// **Data Layer와의 차이:**
/// - ViewModel: UI 상태 관리 (AsyncValue, copyWith)
/// - DataSource: 외부 데이터 소스 관리 (SignalR, Stream 변환)
///
/// **의존성:**
/// - Domain Layer (UseCase) ONLY - Data Layer 직접 접근 금지
/// - 예외: SignalR Stream 구독 (DataSource의 Stream을 구독)
import 'dart:async';
import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/chat/data/datasources/chat_signalr_data_source.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/message_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/usecases/cancel_transaction_usecase.dart';
import 'package:ticket_platform_mobile/features/chat/domain/usecases/confirm_purchase_usecase.dart';
import 'package:ticket_platform_mobile/features/chat/domain/usecases/get_chat_room_detail_usecase.dart';
import 'package:ticket_platform_mobile/features/chat/domain/usecases/get_messages_usecase.dart';
import 'package:ticket_platform_mobile/features/chat/domain/usecases/mark_as_read_usecase.dart';
import 'package:ticket_platform_mobile/features/chat/domain/usecases/request_payment_usecase.dart';
import 'package:ticket_platform_mobile/features/chat/domain/usecases/send_message_usecase.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/ui_models/chat_room_ui_model.dart';

part 'chat_room_viewmodel.g.dart';

@riverpod
class ChatRoomViewModel extends _$ChatRoomViewModel {
  /// 메모리에 보관할 최대 메시지 수
  /// - 200개 초과 시 오래된 메시지 자동 삭제
  /// - 삭제된 메시지는 loadMoreMessages()로 재로드 가능
  static const int _maxMessagesInMemory = 200;
  StreamSubscription<MessageEntity>? _messageSubscription;
  StreamSubscription<RoomUpdatedEvent>? _roomUpdatedSubscription;
  int? _lastMessageId;
  bool _hasMoreMessages = true;

  /// AsyncNotifier 초기화 및 데이터 로드
  /// - dispose 시 리스너 정리 및 채팅방 퇴장
  /// - 채팅방 상세 정보 fetch
  @override
  FutureOr<ChatRoomDetailUiModel> build(int roomId) async {
    ref.onDispose(() {
      _messageSubscription?.cancel();
      _roomUpdatedSubscription?.cancel();
      _leaveRoom();
    });

    return _fetchChatRoomDetail(roomId);
  }

  /// 채팅방 상세 정보 조회
  /// - UseCase를 통해 채팅방 정보 및 메시지 로드
  /// - 읽음 처리 (markAsRead)
  /// - SignalR 채팅방 입장 및 이벤트 리스너 설정
  Future<ChatRoomDetailUiModel> _fetchChatRoomDetail(int roomId) async {
    final entity = await ref
        .read(getChatRoomDetailUsecaseProvider)
        .call(roomId);

    await ref.read(markAsReadUsecaseProvider).call(roomId);

    _joinRoom(roomId);
    _setupSignalRListeners(roomId);

    if (entity.messages.isNotEmpty) {
      _lastMessageId = entity.messages.last.messageId;
    }

    return ChatRoomDetailUiModel.fromEntity(entity);
  }

  /// SignalR 채팅방 입장
  /// - 연결되어 있을 때만 입장 시도
  void _joinRoom(int roomId) {
    try {
      final signalR = ref.read(chatSignalRDataSourceProvider);
      if (signalR.isConnected) {
        signalR.joinRoom(roomId);
      }
    } catch (e) {
      AppLogger.e('Error joining room', e);
    }
  }

  /// SignalR 채팅방 퇴장
  /// - 화면 종료 시 자동 호출 (ref.onDispose)
  void _leaveRoom() {
    try {
      final currentRoom = state.value;
      if (currentRoom == null) return;

      final signalR = ref.read(chatSignalRDataSourceProvider);
      if (signalR.isConnected) {
        signalR.leaveRoom(currentRoom.roomId);
      }
    } catch (e) {
      AppLogger.e('Error leaving room', e);
    }
  }

  void _setupSignalRListeners(int roomId) {
    final signalR = ref.read(chatSignalRDataSourceProvider);

    _messageSubscription = signalR.onReceiveMessage
        .where((msg) => msg.roomId == roomId)
        .listen((message) {
          _addNewMessage(message);
        });

    _roomUpdatedSubscription = signalR.onRoomUpdated
        .where((event) => event.roomId == roomId)
        .listen((event) {
          _handleRoomUpdate(event);
        });
  }

  void _addNewMessage(MessageEntity message) {
    final current = state.value;
    if (current == null) return;

    final newMessageUi = MessageUiModel.fromEntity(message);
    var updatedMessages = [newMessageUi, ...current.messages];

    // 메시지가 너무 많으면 오래된 메시지 삭제
    if (updatedMessages.length > _maxMessagesInMemory) {
      updatedMessages = updatedMessages.take(_maxMessagesInMemory).toList();
      _hasMoreMessages = true;
    }

    state = AsyncValue.data(current.copyWith(messages: updatedMessages));
  }

  void _handleRoomUpdate(RoomUpdatedEvent event) {
    AppLogger.i('Room updated: ${event.event}');
    refresh();
  }

  Future<void> refresh() async {
    final roomId = state.value?.roomId;
    if (roomId == null) return;

    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchChatRoomDetail(roomId));
  }

  Future<void> loadMoreMessages() async {
    if (!_hasMoreMessages) return;

    final current = state.value;
    if (current == null) return;

    try {
      final moreMessages = await ref
          .read(getMessagesUsecaseProvider)
          .call(
            GetMessagesParams(
              roomId: current.roomId,
              lastMessageId: _lastMessageId,
              limit: 50,
            ),
          );

      if (moreMessages.isEmpty) {
        _hasMoreMessages = false;
        return;
      }

      _lastMessageId = moreMessages.last.messageId;
      _hasMoreMessages = moreMessages.length >= 50;

      final moreMessagesUi = moreMessages
          .map(MessageUiModel.fromEntity)
          .toList();
      final updatedMessages = [...current.messages, ...moreMessagesUi];

      state = AsyncValue.data(current.copyWith(messages: updatedMessages));
    } catch (e, stack) {
      AppLogger.e('Error loading more messages', e, stack);
    }
  }

  Future<bool> sendMessage(String message, {File? imageFile}) async {
    final current = state.value;
    if (current == null) return false;

    try {
      await ref
          .read(sendMessageUsecaseProvider)
          .call(
            SendMessageParams(
              roomId: current.roomId,
              message: message.isNotEmpty ? message : null,
              imageFile: imageFile,
            ),
          );
      return true;
    } catch (e, stack) {
      AppLogger.e('Error sending message', e, stack);
      return false;
    }
  }

  Future<bool> requestPayment(int transactionId) async {
    final current = state.value;
    if (current == null) return false;

    try {
      await ref
          .read(requestPaymentUsecaseProvider)
          .call(
            RequestPaymentParams(
              roomId: current.roomId,
              transactionId: transactionId,
            ),
          );
      await refresh();
      return true;
    } catch (e, stack) {
      AppLogger.e('Error requesting payment', e, stack);
      return false;
    }
  }

  Future<bool> confirmPurchase(int transactionId) async {
    final current = state.value;
    if (current == null) return false;

    try {
      await ref
          .read(confirmPurchaseUsecaseProvider)
          .call(
            ConfirmPurchaseParams(
              roomId: current.roomId,
              transactionId: transactionId,
            ),
          );
      await refresh();
      return true;
    } catch (e, stack) {
      AppLogger.e('Error confirming purchase', e, stack);
      return false;
    }
  }

  Future<bool> cancelTransaction(int transactionId, String reason) async {
    final current = state.value;
    if (current == null) return false;

    try {
      await ref
          .read(cancelTransactionUsecaseProvider)
          .call(
            CancelTransactionParams(
              roomId: current.roomId,
              transactionId: transactionId,
              cancelReason: reason,
            ),
          );
      await refresh();
      return true;
    } catch (e, stack) {
      AppLogger.e('Error canceling transaction', e, stack);
      return false;
    }
  }

  void sendTypingIndicator() {
    final current = state.value;
    if (current == null) return;

    try {
      final signalR = ref.read(chatSignalRDataSourceProvider);
      if (signalR.isConnected) {
        signalR.userTyping(current.roomId);
      }
    } catch (e) {
      AppLogger.e('Error sending typing indicator', e);
    }
  }

  void sendStoppedTypingIndicator() {
    final current = state.value;
    if (current == null) return;

    try {
      final signalR = ref.read(chatSignalRDataSourceProvider);
      if (signalR.isConnected) {
        signalR.userStoppedTyping(current.roomId);
      }
    } catch (e) {
      AppLogger.e('Error sending stopped typing indicator', e);
    }
  }

  bool get hasMoreMessages => _hasMoreMessages;
}
