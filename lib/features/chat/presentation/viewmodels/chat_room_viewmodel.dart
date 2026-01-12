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
  StreamSubscription<MessageEntity>? _messageSubscription;
  StreamSubscription<RoomUpdatedEvent>? _roomUpdatedSubscription;
  int? _lastMessageId;
  bool _hasMoreMessages = true;

  @override
  FutureOr<ChatRoomDetailUiModel> build(int roomId) async {
    ref.onDispose(() {
      _messageSubscription?.cancel();
      _roomUpdatedSubscription?.cancel();
      _leaveRoom();
    });

    return _fetchChatRoomDetail(roomId);
  }

  Future<ChatRoomDetailUiModel> _fetchChatRoomDetail(int roomId) async {
    final entity =
        await ref.read(getChatRoomDetailUsecaseProvider).call(roomId);

    await ref.read(markAsReadUsecaseProvider).call(roomId);

    _joinRoom(roomId);
    _setupSignalRListeners(roomId);

    if (entity.messages.isNotEmpty) {
      _lastMessageId = entity.messages.last.messageId;
    }

    return ChatRoomDetailUiModel.fromEntity(entity);
  }

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
    final List<MessageUiModel> updatedMessages = [newMessageUi, ...current.messages];

    state = AsyncValue.data(ChatRoomDetailUiModel(
      roomId: current.roomId,
      ticket: current.ticket,
      buyer: current.buyer,
      seller: current.seller,
      statusCode: current.statusCode,
      statusName: current.statusName,
      transaction: current.transaction,
      canSendMessage: current.canSendMessage,
      canRequestPayment: current.canRequestPayment,
      canConfirmPurchase: current.canConfirmPurchase,
      canCancelTransaction: current.canCancelTransaction,
      messages: updatedMessages,
    ));
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
      final moreMessages = await ref.read(getMessagesUsecaseProvider).call(
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

      final moreMessagesUi =
          moreMessages.map(MessageUiModel.fromEntity).toList();
      final updatedMessages = [...current.messages, ...moreMessagesUi];

      state = AsyncValue.data(ChatRoomDetailUiModel(
        roomId: current.roomId,
        ticket: current.ticket,
        buyer: current.buyer,
        seller: current.seller,
        statusCode: current.statusCode,
        statusName: current.statusName,
        transaction: current.transaction,
        canSendMessage: current.canSendMessage,
        canRequestPayment: current.canRequestPayment,
        canConfirmPurchase: current.canConfirmPurchase,
        canCancelTransaction: current.canCancelTransaction,
        messages: updatedMessages,
      ));
    } catch (e, stack) {
      AppLogger.e('Error loading more messages', e, stack);
    }
  }

  Future<bool> sendMessage(String message, {File? imageFile}) async {
    final current = state.value;
    if (current == null) return false;

    try {
      await ref.read(sendMessageUsecaseProvider).call(
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
      await ref.read(requestPaymentUsecaseProvider).call(
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
      await ref.read(confirmPurchaseUsecaseProvider).call(
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
      await ref.read(cancelTransactionUsecaseProvider).call(
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
