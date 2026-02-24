import 'package:freezed_annotation/freezed_annotation.dart';

import 'message_entity.dart';
import 'transaction_entity.dart';
import 'user_profile_entity.dart';

part 'chat_room_entity.freezed.dart';

@freezed
abstract class ChatRoomEntity with _$ChatRoomEntity {
  const factory ChatRoomEntity({
    required int roomId,
    required TicketInfoEntity ticket,
    required UserProfileEntity buyer,
    required UserProfileEntity seller,
    required String statusCode,
    required String statusName,
    TransactionEntity? transaction,
    required bool canSendMessage,
    required bool canRequestPayment,
    required bool canConfirmPurchase,
    required bool canCancelTransaction,
    required bool canWriteReview,
    required bool hasReviewedSeller,
    required List<MessageEntity> messages,
  }) = _ChatRoomEntity;
}

@freezed
abstract class TicketInfoEntity with _$TicketInfoEntity {
  const factory TicketInfoEntity({
    required int ticketId,
    required String title,
    required int price,
    String? thumbnailUrl,
    String? seatInfo,
    DateTime? eventDateTime,
    String? venueName,
    int? totalQuantity,
    int? remainingQuantity,
  }) = _TicketInfoEntity;
}

@freezed
abstract class ChatRoomListItemEntity with _$ChatRoomListItemEntity {
  const factory ChatRoomListItemEntity({
    required int roomId,
    required int ticketId,
    required String ticketTitle,
    String? ticketThumbnailUrl,
    required OtherUserEntity otherUser,
    String? lastMessage,
    DateTime? lastMessageAt,
    required int unreadCount,
    required String roomStatusCode,
    required String roomStatusName,
    int? transactionId,
    String? transactionStatusCode,
    String? transactionStatusName,
  }) = _ChatRoomListItemEntity;
}

@freezed
abstract class OtherUserEntity with _$OtherUserEntity {
  const factory OtherUserEntity({
    required int userId,
    required String nickname,
    String? profileImageUrl,
  }) = _OtherUserEntity;
}
