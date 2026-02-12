import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/chat_room_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/message_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/transaction_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/user_profile_entity.dart';

part 'chat_resp_dto.freezed.dart';
part 'chat_resp_dto.g.dart';

@freezed
abstract class ImageInfoDto with _$ImageInfoDto {
  const factory ImageInfoDto({required String url, String? expiresAt}) =
      _ImageInfoDto;

  factory ImageInfoDto.fromJson(Map<String, dynamic> json) =>
      _$ImageInfoDtoFromJson(json);
}

extension ImageInfoDtoX on ImageInfoDto {
  ImageInfoEntity toEntity() => ImageInfoEntity(
    url: url,
    expiresAt: expiresAt != null ? DateTime.parse(expiresAt!) : null,
  );
}

@freezed
abstract class ChatRoomRespDto with _$ChatRoomRespDto {
  const factory ChatRoomRespDto({
    required int roomId,
    required TicketInfoDto ticket,
    required UserProfileDto buyer,
    required UserProfileDto seller,
    required String statusCode,
    required String statusName,
    TransactionDto? transaction,
    required bool canSendMessage,
    required bool canRequestPayment,
    required bool canConfirmPurchase,
    required bool canCancelTransaction,
    required List<MessageDto> messages,
  }) = _ChatRoomRespDto;

  factory ChatRoomRespDto.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomRespDtoFromJson(json);
}

extension ChatRoomRespDtoX on ChatRoomRespDto {
  ChatRoomEntity toEntity() {
    return ChatRoomEntity(
      roomId: roomId,
      ticket: ticket.toEntity(),
      buyer: buyer.toEntity(),
      seller: seller.toEntity(),
      statusCode: statusCode,
      statusName: statusName,
      transaction: transaction?.toEntity(),
      canSendMessage: canSendMessage,
      canRequestPayment: canRequestPayment,
      canConfirmPurchase: canConfirmPurchase,
      canCancelTransaction: canCancelTransaction,
      messages: messages.map((m) => m.toEntity()).toList(),
    );
  }
}

@freezed
abstract class TicketInfoDto with _$TicketInfoDto {
  const factory TicketInfoDto({
    required int ticketId,
    required String title,
    required int price,
    String? thumbnailUrl,
    String? seatInfo,
    String? eventDateTime,
    String? venueName,
    int? unitPrice,
    int? totalQuantity,
    int? remainingQuantity,
  }) = _TicketInfoDto;

  factory TicketInfoDto.fromJson(Map<String, dynamic> json) =>
      _$TicketInfoDtoFromJson(json);
}

extension TicketInfoDtoX on TicketInfoDto {
  TicketInfoEntity toEntity() => TicketInfoEntity(
    ticketId: ticketId,
    title: title,
    price: unitPrice ?? price, // unitPrice 우선, fallback to price
    thumbnailUrl: thumbnailUrl,
    seatInfo: seatInfo,
    eventDateTime: eventDateTime != null
        ? DateTime.parse(eventDateTime!)
        : null,
    venueName: venueName,
    totalQuantity: totalQuantity,
    remainingQuantity: remainingQuantity,
  );
}

@freezed
abstract class UserProfileDto with _$UserProfileDto {
  const factory UserProfileDto({
    required int userId,
    required String nickname,
    String? profileImageUrl,
    required double mannerTemperature,
  }) = _UserProfileDto;

  factory UserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDtoFromJson(json);
}

extension UserProfileDtoX on UserProfileDto {
  UserProfileEntity toEntity() => UserProfileEntity(
    userId: userId,
    nickname: nickname,
    profileImageUrl: profileImageUrl,
    mannerTemperature: mannerTemperature,
  );
}

@freezed
abstract class TransactionDto with _$TransactionDto {
  const factory TransactionDto({
    int? transactionId,
    String? statusCode,
    String? statusName,
    int? amount,
    String? confirmedAt,
    String? cancelledAt,
  }) = _TransactionDto;

  factory TransactionDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionDtoFromJson(json);
}

TransactionStatus statusFromCode(String code) {
  return switch (code) {
    'reserved' => TransactionStatus.reserved,
    'pending_payment' => TransactionStatus.pendingPayment,
    'paid' => TransactionStatus.paid,
    'confirmed' => TransactionStatus.confirmed,
    'completed' => TransactionStatus.completed,
    'cancelled' => TransactionStatus.cancelled,
    'refunded' => TransactionStatus.refunded,
    _ => TransactionStatus.reserved,
  };
}

extension TransactionDtoX on TransactionDto {
  TransactionEntity toEntity() {
    return TransactionEntity(
      transactionId: transactionId ?? 0,
      status: statusFromCode(statusCode ?? ''),
      statusName: statusName ?? '',
      amount: amount ?? 0,
      confirmedAt: confirmedAt != null ? DateTime.parse(confirmedAt!) : null,
      cancelledAt: cancelledAt != null ? DateTime.parse(cancelledAt!) : null,
    );
  }
}

@freezed
abstract class MessageDto with _$MessageDto {
  const factory MessageDto({
    required int messageId,
    required int roomId,
    required int senderId,
    required String senderNickname,
    String? senderProfileImage,
    String? message,
    String? type,
    List<ImageInfoDto>? images,
    required String createdAt,
    required bool isMyMessage,
  }) = _MessageDto;

  factory MessageDto.fromJson(Map<String, dynamic> json) =>
      _$MessageDtoFromJson(json);
}

extension MessageDtoX on MessageDto {
  MessageEntity toEntity() {
    List<ImageInfoEntity>? imageEntities;
    if (images != null && images!.isNotEmpty) {
      imageEntities = images!.map((dto) => dto.toEntity()).toList();
    }

    // 서버 응답의 type 필드를 기반으로 MessageType 결정
    // type 필드가 없거나 null인 경우, 메시지 텍스트를 기반으로 추론 (하위 호환 및 결제 요청 버블 보장)
    MessageType messageType = MessageType.text;
    if (type != null) {
      if (type == 'TEXT') messageType = MessageType.text;
      if (type == 'IMAGE') messageType = MessageType.image;
      if (type == 'PAYMENT_REQUEST') messageType = MessageType.paymentRequest;
      if (type == 'PAYMENT_SUCCESS') messageType = MessageType.paymentSuccess;
      if (type == 'PURCHASE_CONFIRMED') {
        messageType = MessageType.purchaseConfirmed;
      }
    } else if (message == '결제가 요청되었습니다.') {
      messageType = MessageType.paymentRequest;
    }

    return MessageEntity(
      messageId: messageId,
      roomId: roomId,
      senderId: senderId,
      senderNickname: senderNickname,
      senderProfileImage: senderProfileImage,
      type: messageType,
      message: message,
      images: imageEntities,
      createdAt: DateTime.parse(createdAt),
      isMyMessage: isMyMessage,
    );
  }
}

@freezed
abstract class ChatRoomListItemDto with _$ChatRoomListItemDto {
  const factory ChatRoomListItemDto({
    required int roomId,
    required int ticketId,
    required String ticketTitle,
    String? ticketThumbnailUrl,
    required OtherUserDto otherUser,
    String? lastMessage,
    String? lastMessageAt,
    required int unreadCount,
    required String roomStatusCode,
    required String roomStatusName,
    int? transactionId,
    String? transactionStatusCode,
    String? transactionStatusName,
  }) = _ChatRoomListItemDto;

  factory ChatRoomListItemDto.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomListItemDtoFromJson(json);
}

extension ChatRoomListItemDtoX on ChatRoomListItemDto {
  ChatRoomListItemEntity toEntity() => ChatRoomListItemEntity(
    roomId: roomId,
    ticketId: ticketId,
    ticketTitle: ticketTitle,
    ticketThumbnailUrl: ticketThumbnailUrl,
    otherUser: otherUser.toEntity(),
    lastMessage: lastMessage,
    lastMessageAt: lastMessageAt != null
        ? DateTime.parse(lastMessageAt!)
        : null,
    unreadCount: unreadCount,
    roomStatusCode: roomStatusCode,
    roomStatusName: roomStatusName,
    transactionId: transactionId,
    transactionStatusCode: transactionStatusCode,
    transactionStatusName: transactionStatusName,
  );
}

@freezed
abstract class OtherUserDto with _$OtherUserDto {
  const factory OtherUserDto({
    required int userId,
    required String nickname,
    String? profileImageUrl,
  }) = _OtherUserDto;

  factory OtherUserDto.fromJson(Map<String, dynamic> json) =>
      _$OtherUserDtoFromJson(json);
}

extension OtherUserDtoX on OtherUserDto {
  OtherUserEntity toEntity() => OtherUserEntity(
    userId: userId,
    nickname: nickname,
    profileImageUrl: profileImageUrl,
  );
}

@freezed
abstract class SendMessageRespDto with _$SendMessageRespDto {
  const factory SendMessageRespDto({
    required int messageId,
    required int roomId,
    required int senderId,
    required String senderNickname,
    String? senderProfileImage,
    String? message,
    List<ImageInfoDto>? images,
    required String createdAt,
    required bool success,
  }) = _SendMessageRespDto;

  factory SendMessageRespDto.fromJson(Map<String, dynamic> json) =>
      _$SendMessageRespDtoFromJson(json);
}

extension SendMessageRespDtoX on SendMessageRespDto {
  MessageEntity toEntity() {
    List<ImageInfoEntity>? imageEntities;
    if (images != null && images!.isNotEmpty) {
      imageEntities = images!.map((dto) => dto.toEntity()).toList();
    }

    return MessageEntity(
      messageId: messageId,
      roomId: roomId,
      senderId: senderId,
      senderNickname: senderNickname,
      senderProfileImage: senderProfileImage,
      message: message,
      images: imageEntities,
      createdAt: DateTime.parse(createdAt),
      isMyMessage: true,
    );
  }
}

@freezed
abstract class PaymentRequestRespDto with _$PaymentRequestRespDto {
  const factory PaymentRequestRespDto({
    required String paymentUrl,
    required int transactionId,
    required int amount,
  }) = _PaymentRequestRespDto;

  factory PaymentRequestRespDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentRequestRespDtoFromJson(json);
}

extension PaymentRequestRespDtoX on PaymentRequestRespDto {
  PaymentRequestEntity toEntity() {
    AppLogger.d('📥 [PaymentRequestRespDto] Converting to Entity:');
    AppLogger.d('  - transactionId: $transactionId');
    AppLogger.d('  - amount: $amount');
    AppLogger.d(
      '  - paymentUrl: ${paymentUrl.substring(0, paymentUrl.length > 50 ? 50 : paymentUrl.length)}...',
    );

    return PaymentRequestEntity(
      paymentUrl: paymentUrl,
      transactionId: transactionId,
      amount: amount,
    );
  }
}

@freezed
abstract class PurchaseConfirmRespDto with _$PurchaseConfirmRespDto {
  const factory PurchaseConfirmRespDto({
    required int transactionId,
    required String confirmedAt,
    required bool success,
  }) = _PurchaseConfirmRespDto;

  factory PurchaseConfirmRespDto.fromJson(Map<String, dynamic> json) =>
      _$PurchaseConfirmRespDtoFromJson(json);
}

extension PurchaseConfirmRespDtoX on PurchaseConfirmRespDto {
  PurchaseConfirmEntity toEntity() => PurchaseConfirmEntity(
    transactionId: transactionId,
    confirmedAt: DateTime.parse(confirmedAt),
    success: success,
  );
}

@freezed
abstract class ImageUrlRefreshRespDto with _$ImageUrlRefreshRespDto {
  const factory ImageUrlRefreshRespDto({
    required String imageUrl,
    required String expiresAt,
  }) = _ImageUrlRefreshRespDto;

  factory ImageUrlRefreshRespDto.fromJson(Map<String, dynamic> json) =>
      _$ImageUrlRefreshRespDtoFromJson(json);
}

extension ImageUrlRefreshRespDtoX on ImageUrlRefreshRespDto {
  ImageUrlRefreshEntity toEntity() => ImageUrlRefreshEntity(
    imageUrl: imageUrl,
    expiresAt: DateTime.parse(expiresAt),
  );
}
