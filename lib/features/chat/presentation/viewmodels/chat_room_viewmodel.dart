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
import 'package:ticket_platform_mobile/core/storage/token_storage.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/core/network/dio_provider.dart';
import 'package:ticket_platform_mobile/features/chat/data/datasources/chat_event_bus.dart';
import 'package:ticket_platform_mobile/features/chat/data/datasources/chat_signalr_data_source.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/message_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/events/chat_message_event.dart';
import 'package:ticket_platform_mobile/features/chat/domain/usecases/cancel_transaction_usecase.dart';
import 'package:ticket_platform_mobile/features/chat/domain/usecases/confirm_purchase_usecase.dart';
import 'package:ticket_platform_mobile/features/chat/domain/usecases/get_chat_room_detail_usecase.dart';
import 'package:ticket_platform_mobile/features/chat/domain/usecases/get_messages_usecase.dart';
import 'package:ticket_platform_mobile/features/chat/domain/usecases/leave_chat_room_usecase.dart';
import 'package:ticket_platform_mobile/features/chat/domain/usecases/mark_as_read_usecase.dart';
import 'package:ticket_platform_mobile/features/chat/domain/usecases/refresh_image_url_usecase.dart';
import 'package:ticket_platform_mobile/features/chat/domain/usecases/request_payment_usecase.dart';
import 'package:ticket_platform_mobile/features/chat/domain/usecases/send_message_usecase.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/ui_models/chat_room_ui_model.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/viewmodels/profile_viewmodel.dart';

part 'chat_room_viewmodel.g.dart';

@riverpod
class ChatRoomViewModel extends _$ChatRoomViewModel {
  /// 메모리에 보관할 최대 메시지 수
  /// - 200개 초과 시 오래된 메시지 자동 삭제
  /// - 삭제된 메시지는 loadMoreMessages()로 재로드 가능
  static const int _maxMessagesInMemory = 200;
  static const Duration _markAsReadThrottle = Duration(milliseconds: 700);
  StreamSubscription<MessageEntity>? _messageSubscription;
  StreamSubscription<RoomUpdatedEvent>? _roomUpdatedSubscription;
  int? _lastMessageId;
  bool _hasMoreMessages = true;
  bool _isLoadingMoreMessages = false;
  bool _isMarkingAsRead = false;
  DateTime? _lastMarkAsReadAt;
  final Set<int> _receivedMessageIds = {}; // 중복 메시지 방지용 (SignalR 이벤트 중복 수신)

  /// AsyncNotifier 초기화 및 데이터 로드
  /// - dispose 시 리스너 정리 및 채팅방 퇴장
  /// - SignalR 연결 확인 및 연결
  /// - 리스너를 가장 먼저 설정하여 메시지 손실 방지
  /// - 채팅방 상세 정보 fetch
  @override
  FutureOr<ChatRoomDetailUiModel> build(int roomId) async {
    // Disposal 시 ref/state 접근을 피하기 위해 필요한 인스턴스 캡처
    final signalR = ref.read(chatSignalRDataSourceProvider);

    ref.onDispose(() {
      _messageSubscription?.cancel();
      _roomUpdatedSubscription?.cancel();
      _leaveRoom(signalR, roomId);
    });

    // SignalR 연결 확인 (채팅방 직접 진입 케이스 대비)
    await _connectSignalRIfNeeded();

    // 리스너를 가장 먼저 설정 (메시지 손실 방지)
    _setupSignalRListeners(roomId);

    // 채팅방 입장 (재시도 로직 포함)
    await _joinRoomWithRetry(roomId);

    return _fetchChatRoomDetail(roomId);
  }

  /// 채팅방 상세 정보 조회
  /// - UseCase를 통해 채팅방 정보 및 메시지 로드
  /// - 읽음 처리 (markAsRead)
  Future<ChatRoomDetailUiModel> _fetchChatRoomDetail(int roomId) async {
    final entity = await ref
        .read(getChatRoomDetailUsecaseProvider)
        .call(roomId);

    await _markRoomAsRead(roomId, force: true);

    if (entity.messages.isNotEmpty) {
      _lastMessageId = entity.messages.last.messageId;
    }

    return ChatRoomDetailUiModel.fromEntity(entity);
  }

  /// SignalR 채팅방 입장 (재시도 로직 포함)
  /// - 연결 상태가 Connected가 아니면 최대 3회 재시도
  /// - 500ms 간격으로 재시도
  Future<void> _joinRoomWithRetry(int roomId, {int maxRetries = 3}) async {
    for (int i = 0; i < maxRetries; i++) {
      try {
        final signalR = ref.read(chatSignalRDataSourceProvider);
        AppLogger.i(
          '🔌 SignalR connection status: ${signalR.isConnected} (attempt ${i + 1}/$maxRetries)',
        );

        if (signalR.isConnected) {
          await signalR.joinRoom(roomId);
          AppLogger.i('✅ Successfully joined room $roomId on attempt ${i + 1}');
          return;
        }

        AppLogger.w(
          '⏳ Waiting for SignalR connection (attempt ${i + 1}/$maxRetries)',
        );
        await Future.delayed(const Duration(milliseconds: 500));
      } catch (e) {
        AppLogger.e('Error joining room on attempt ${i + 1}', e);
        if (i == maxRetries - 1) rethrow;
      }
    }
    AppLogger.e('❌ Failed to join room $roomId after $maxRetries attempts');
  }

  /// SignalR 채팅방 퇴장
  /// - 화면 종료 시 자동 호출 (ref.onDispose)
  void _leaveRoom(ChatSignalRDataSource signalR, int roomId) {
    try {
      if (signalR.isConnected) {
        signalR.leaveRoom(roomId);
        AppLogger.i('🚪 Left chat room $roomId');
      }
    } catch (e) {
      // Note: Disposal 중 발생하는 에러는 사용자 경험에 영향을 주지 않으므로 에러가 아닌 디버그용으로만 기록
      AppLogger.d('Info: Silent failure during leaveRoom: $e');
    }
  }

  void _setupSignalRListeners(int roomId) {
    final signalR = ref.read(chatSignalRDataSourceProvider);

    AppLogger.i('🎧 Setting up SignalR listeners for room $roomId');

    // Cancel existing subscriptions to prevent memory leaks and duplicate event handling
    _messageSubscription?.cancel();
    _roomUpdatedSubscription?.cancel();

    _messageSubscription = signalR.onReceiveMessage
        .where((msg) {
          final matches = msg.roomId == roomId;
          AppLogger.i(
            '📩 Message received: messageId=${msg.messageId}, roomId=${msg.roomId}, matches=$matches (expecting roomId=$roomId)',
          );
          return matches;
        })
        .listen((message) {
          AppLogger.i('✅ Adding message to UI: ${message.messageId}');
          _addNewMessage(message);
        });

    _roomUpdatedSubscription = signalR.onRoomUpdated
        .where((event) => event.roomId == roomId)
        .listen((event) {
          _handleRoomUpdate(event);
        });

    AppLogger.i('✅ SignalR listeners set up completed for room $roomId');
  }

  void _addNewMessage(MessageEntity message) {
    final current = state.value;
    if (current == null) return;

    final currentUserId = _resolveCurrentUserId(current);
    final resolvedIsMyMessage =
        message.isMyMessage ||
        (currentUserId != null && message.senderId == currentUserId);

    final messageToUse = message.copyWith(isMyMessage: resolvedIsMyMessage);
    final newMessageUi = MessageUiModel.fromEntity(messageToUse);

    // 중복 메시지 처리: 기존 메시지가 있으면 무시하지 않고 merge하여 정합성 보정
    final duplicateIndex = current.messages.indexWhere(
      (msg) => msg.messageId == message.messageId,
    );
    if (duplicateIndex != -1) {
      final existing = current.messages[duplicateIndex];
      final merged = _mergeMessage(existing, newMessageUi);

      if (_isSameMessage(existing, merged)) {
        AppLogger.i(
          '📌 Duplicate message ignored (no changes): ${message.messageId}',
        );
        return;
      }

      final updatedMessages = [...current.messages];
      updatedMessages[duplicateIndex] = merged;
      state = AsyncValue.data(current.copyWith(messages: updatedMessages));

      AppLogger.i(
        '♻️ Duplicate message reconciled: ${message.messageId}, isMyMessage=${merged.isMyMessage}',
      );
      return;
    }

    // 신규 메시지는 한 번만 기록 (SignalR 중복 이벤트 방지)
    _receivedMessageIds.add(message.messageId);

    var updatedMessages = [newMessageUi, ...current.messages];

    // 메시지가 너무 많으면 오래된 메시지 삭제
    if (updatedMessages.length > _maxMessagesInMemory) {
      updatedMessages = updatedMessages.take(_maxMessagesInMemory).toList();
      _hasMoreMessages = true;
    }

    state = AsyncValue.data(current.copyWith(messages: updatedMessages));

    if (!resolvedIsMyMessage) {
      unawaited(_markRoomAsRead(message.roomId));
    }
  }

  Future<void> markCurrentRoomAsRead({bool force = true}) async {
    final roomId = state.value?.roomId;
    if (roomId == null) {
      return;
    }

    await _markRoomAsRead(roomId, force: force);
  }

  Future<void> _markRoomAsRead(int roomId, {bool force = false}) async {
    if (!force && _isMarkingAsRead) {
      return;
    }

    final now = DateTime.now();
    if (!force && _lastMarkAsReadAt != null) {
      final elapsed = now.difference(_lastMarkAsReadAt!);
      if (elapsed < _markAsReadThrottle) {
        return;
      }
    }

    _isMarkingAsRead = true;
    try {
      await ref.read(markAsReadUsecaseProvider).call(roomId);
      _lastMarkAsReadAt = DateTime.now();
    } catch (e, stack) {
      AppLogger.e('Error marking room as read', e, stack);
    } finally {
      _isMarkingAsRead = false;
    }
  }

  int? _resolveCurrentUserId(ChatRoomDetailUiModel current) {
    final profileUserId = ref
        .read(profileViewModelProvider)
        .value
        ?.profile
        ?.userId;
    if (profileUserId != null) {
      return profileUserId;
    }

    for (final msg in current.messages) {
      if (msg.isMyMessage) {
        return msg.senderId;
      }
    }

    return null;
  }

  MessageUiModel _mergeMessage(
    MessageUiModel existing,
    MessageUiModel incoming,
  ) {
    final mergedMessageText = (existing.message ?? '').trim().isNotEmpty
        ? existing.message
        : incoming.message;
    final mergedImages =
        (existing.images != null && existing.images!.isNotEmpty)
        ? existing.images
        : incoming.images;

    return existing.copyWith(
      senderNickname: incoming.senderNickname,
      senderProfileImage: incoming.senderProfileImage,
      message: mergedMessageText,
      images: mergedImages,
      type: incoming.type,
      createdAt: incoming.createdAt,
      timeDisplay: incoming.timeDisplay,
      isMyMessage: existing.isMyMessage || incoming.isMyMessage,
    );
  }

  bool _isSameMessage(MessageUiModel a, MessageUiModel b) {
    return a.senderNickname == b.senderNickname &&
        a.senderProfileImage == b.senderProfileImage &&
        a.message == b.message &&
        a.type == b.type &&
        a.createdAt == b.createdAt &&
        a.timeDisplay == b.timeDisplay &&
        a.isMyMessage == b.isMyMessage &&
        _isSameImages(a.images, b.images);
  }

  bool _isSameImages(List<ImageInfoUiModel>? a, List<ImageInfoUiModel>? b) {
    if (identical(a, b)) {
      return true;
    }
    if (a == null || b == null) {
      return a == b;
    }
    if (a.length != b.length) {
      return false;
    }

    for (int i = 0; i < a.length; i++) {
      if (a[i].url != b[i].url || a[i].expiresAt != b[i].expiresAt) {
        return false;
      }
    }
    return true;
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
    // Prevent concurrent loading requests
    if (_isLoadingMoreMessages) return;

    final current = state.value;
    if (current == null) return;

    _isLoadingMoreMessages = true;
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
    } finally {
      _isLoadingMoreMessages = false;
    }
  }

  Future<bool> sendMessage(String message, {List<File>? imageFiles}) async {
    final current = state.value;
    if (current == null) return false;

    // Validate maximum 5 images
    if (imageFiles != null && imageFiles.length > 5) {
      AppLogger.w('Maximum 5 images allowed, got ${imageFiles.length}');
      return false;
    }

    try {
      final sentMessage = await ref
          .read(sendMessageUsecaseProvider)
          .call(
            SendMessageParams(
              roomId: current.roomId,
              message: message.isNotEmpty ? message : null,
              imageFiles: imageFiles,
            ),
          );

      // 즉시 UI에 표시 (SignalR 브로드캐스트를 기다리지 않음)
      _addNewMessage(sentMessage);

      // Event Bus로 ChatListViewModel에 알림
      ref
          .read(chatEventBusProvider)
          .publishMessageSent(ChatMessageEvent(sentMessage));

      return true;
    } catch (e, stack) {
      AppLogger.e('Error sending message', e, stack);
      return false;
    }
  }

  Future<bool> requestPayment(int quantity) async {
    final current = state.value;
    if (current == null) return false;

    try {
      // 1. 낙관적 업데이트: UI에 결제 요청 카드 즉시 추가
      final myProfile = ref.read(profileViewModelProvider).value?.profile;
      final optimisticMessage = MessageUiModel(
        messageId:
            -(DateTime.now().millisecondsSinceEpoch % 1000000), // 임시 음수 ID
        roomId: current.roomId,
        senderId: myProfile?.userId ?? 0,
        senderNickname: myProfile?.nickname ?? '판매자',
        senderProfileImage: myProfile?.profileImageUrl,
        message: '결제를 요청합니다.',
        type: MessageType.paymentRequest,
        createdAt: DateTime.now(),
        timeDisplay: '방금 전',
        isMyMessage: true,
      );

      final updatedMessages = [optimisticMessage, ...current.messages];
      state = AsyncValue.data(current.copyWith(messages: updatedMessages));

      // 2. 실제 서버 요청 실행
      final result = await ref
          .read(requestPaymentUsecaseProvider)
          .call(
            RequestPaymentParams(roomId: current.roomId, quantity: quantity),
          );

      // 3. 부분 업데이트: 전체 리로드 없이 트랜잭션 상태만 업데이트
      // SignalR 메시지로 실시간 업데이트되므로 refresh() 호출 불필요
      // 트랜잭션 상태는 SignalR을 통해 자동으로 업데이트됨

      AppLogger.i(
        '✅ Payment requested successfully (amount: ${result.amount})',
      );
      return true;
    } catch (e, stack) {
      AppLogger.e('Error requesting payment', e, stack);
      // 에러 발생 시 낙관적 업데이트 롤백
      final current = state.value;
      if (current != null) {
        // 임시 메시지 제거
        final messagesWithoutOptimistic = current.messages
            .where((msg) => msg.messageId >= 0) // 음수 ID 제거
            .toList();
        state = AsyncValue.data(
          current.copyWith(messages: messagesWithoutOptimistic),
        );
      }
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

  Future<bool> leaveRoom() async {
    final current = state.value;
    if (current == null) return false;

    try {
      await ref
          .read(leaveChatRoomUsecaseProvider)
          .call(LeaveChatRoomParams(roomId: current.roomId));
      return true;
    } catch (e, stack) {
      AppLogger.e('Error leaving chat room', e, stack);
      return false;
    }
  }

  Future<String?> refreshImageUrl(int messageId) async {
    try {
      final result = await ref
          .read(refreshImageUrlUsecaseProvider)
          .call(messageId);
      return result.imageUrl;
    } catch (e, stack) {
      AppLogger.e('Error refreshing image URL', e, stack);
      return null;
    }
  }

  void markReviewedSeller() {
    final current = state.value;
    if (current == null) {
      return;
    }

    state = AsyncValue.data(
      current.copyWith(canWriteReview: false, hasReviewedSeller: true),
    );
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

  /// SignalR 연결 확인 및 연결
  /// - 채팅방에 직접 진입하는 경우를 대비
  /// - 이미 연결되어 있으면 재연결하지 않음
  /// - 토큰 갱신은 TokenRefreshService를 통해 중앙화
  Future<void> _connectSignalRIfNeeded() async {
    try {
      final signalR = ref.read(chatSignalRDataSourceProvider);

      // 이미 연결되어 있으면 스킵
      if (signalR.isConnected) {
        AppLogger.i('✅ SignalR already connected from chat room');
        return;
      }

      AppLogger.i('🔌 Attempting to connect SignalR from chat room...');

      // 토큰 가져오기
      final tokenStorage = ref.read(tokenStorageProvider);
      var accessToken = await tokenStorage.getAccessToken();

      if (accessToken == null || accessToken.isEmpty) {
        AppLogger.w('⚠️ No access token found, cannot connect SignalR');
        return;
      }

      // 토큰 만료 확인 및 갱신 (TokenRefreshService 사용)
      final expiresAt = await tokenStorage.getExpiresAt();
      if (expiresAt != null && expiresAt.isNotEmpty) {
        try {
          final expiryDate = DateTime.parse(expiresAt);
          final now = DateTime.now();

          // 만료되었거나 1분 이내 만료 예정이면 갱신
          if (now.isAfter(expiryDate) ||
              now.isAfter(expiryDate.subtract(const Duration(minutes: 1)))) {
            AppLogger.i(
              '🔄 Token expired or expiring soon, refreshing before SignalR connection...',
            );

            final refreshService = ref.read(tokenRefreshServiceProvider);
            final refreshSuccess = await refreshService.refresh();

            if (refreshSuccess) {
              accessToken = await tokenStorage.getAccessToken();
              if (accessToken == null || accessToken.isEmpty) {
                AppLogger.e('❌ Token refresh succeeded but new token is null');
                return;
              }
              AppLogger.i(
                '✅ Token refreshed successfully before SignalR connection',
              );
            } else {
              AppLogger.e('❌ Token refresh failed, cannot connect SignalR');
              return;
            }
          }
        } catch (e) {
          AppLogger.w('⚠️ Failed to parse token expiry date: $e');
          // 파싱 실패 시에도 연결 시도
        }
      }

      // SignalR 연결
      AppLogger.i('🔌 Connecting to SignalR with valid token...');
      await signalR.connect(accessToken!);
      AppLogger.i('✅ SignalR connected successfully from chat room');
    } catch (e, stack) {
      AppLogger.e('❌ Failed to connect SignalR from chat room', e, stack);
      // 연결 실패해도 채팅방 UI는 볼 수 있어야 하므로 에러를 던지지 않음
    }
  }

  bool get hasMoreMessages => _hasMoreMessages;
}
