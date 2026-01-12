import 'dart:io';

import 'package:ticket_platform_mobile/features/chat/domain/entities/chat_room_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/message_entity.dart';

abstract class ChatRepository {
  /// 채팅방 목록 조회
  Future<List<ChatRoomListItemEntity>> getChatRooms({
    int page = 1,
    int pageSize = 20,
  });

  /// 채팅방 상세 조회
  Future<ChatRoomEntity> getChatRoomDetail(int roomId);

  /// 채팅방 생성 또는 조회
  Future<ChatRoomEntity> createOrGetChatRoom(int ticketId);

  /// 메시지 전송
  Future<MessageEntity> sendMessage({
    required int roomId,
    String? message,
    File? imageFile,
  });

  /// 메시지 목록 조회 (페이지네이션)
  Future<List<MessageEntity>> getMessages({
    required int roomId,
    int? lastMessageId,
    int limit = 50,
  });

  /// 메시지 읽음 처리
  Future<void> markAsRead(int roomId);

  /// 결제 요청 (판매자)
  Future<PaymentRequestResult> requestPayment({
    required int roomId,
    required int transactionId,
  });

  /// 구매 확정 (구매자)
  Future<PurchaseConfirmResult> confirmPurchase({
    required int roomId,
    required int transactionId,
  });

  /// 거래 취소
  Future<void> cancelTransaction({
    required int roomId,
    required int transactionId,
    required String cancelReason,
  });
}

class PaymentRequestResult {
  final String paymentUrl;
  final int transactionId;
  final int amount;

  PaymentRequestResult({
    required this.paymentUrl,
    required this.transactionId,
    required this.amount,
  });
}

class PurchaseConfirmResult {
  final int transactionId;
  final DateTime confirmedAt;
  final bool success;

  PurchaseConfirmResult({
    required this.transactionId,
    required this.confirmedAt,
    required this.success,
  });
}
