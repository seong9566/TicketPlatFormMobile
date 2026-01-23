import 'dart:io';

import 'package:ticket_platform_mobile/features/chat/domain/entities/chat_room_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/message_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/transaction_entity.dart';

abstract class ChatRepository {
  /// 채팅방 목록 조회
  Future<List<ChatRoomListItemEntity>> getChatRooms({
    int page = 1,
    int pageSize = 20,
  });

  /// 채팅방 상세 조회
  Future<ChatRoomEntity> getChatRoomDetail(int roomId);

  /// 티켓 ID로 기존 채팅방 조회 (생성하지 않음)
  /// 채팅방이 없으면 null 반환
  Future<ChatRoomEntity?> getChatRoomByTicket(int ticketId);

  /// 채팅방 생성 또는 조회
  Future<ChatRoomEntity> createOrGetChatRoom(int ticketId);

  /// 메시지 전송
  Future<MessageEntity> sendMessage({
    required int roomId,
    String? message,
    List<File>? imageFiles,
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
  Future<PaymentRequestEntity> requestPayment({
    required int roomId,
    required int transactionId,
  });

  /// 구매 확정 (구매자)
  Future<PurchaseConfirmEntity> confirmPurchase({
    required int roomId,
    required int transactionId,
  });

  /// 거래 취소
  Future<void> cancelTransaction({
    required int roomId,
    required int transactionId,
    required String cancelReason,
  });

  /// 이미지 URL 재발급
  Future<ImageUrlRefreshEntity> refreshImageUrl(int messageId);
}
