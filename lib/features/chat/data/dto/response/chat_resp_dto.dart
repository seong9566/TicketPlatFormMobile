import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/chat_room_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/message_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/transaction_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/user_profile_entity.dart';

part 'chat_resp_dto.freezed.dart';
part 'chat_resp_dto.g.dart';

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
  ChatRoomEntity toEntity() => ChatRoomEntity(
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

@freezed
abstract class TicketInfoDto with _$TicketInfoDto {
  const factory TicketInfoDto({
    required int ticketId,
    required String title,
    required int price,
    String? thumbnailUrl,
  }) = _TicketInfoDto;

  factory TicketInfoDto.fromJson(Map<String, dynamic> json) =>
      _$TicketInfoDtoFromJson(json);
}

extension TicketInfoDtoX on TicketInfoDto {
  TicketInfoEntity toEntity() => TicketInfoEntity(
        ticketId: ticketId,
        title: title,
        price: price,
        thumbnailUrl: thumbnailUrl,
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
    required int transactionId,
    required String statusCode,
    required String statusName,
    required int amount,
    String? paymentUrl,
    String? confirmedAt,
    String? cancelReason,
  }) = _TransactionDto;

  factory TransactionDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionDtoFromJson(json);
}

extension TransactionDtoX on TransactionDto {
  TransactionEntity toEntity() => TransactionEntity(
        transactionId: transactionId,
        statusCode: statusCode,
        statusName: statusName,
        amount: amount,
        paymentUrl: paymentUrl,
        confirmedAt: confirmedAt != null ? DateTime.parse(confirmedAt!) : null,
        cancelReason: cancelReason,
      );
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
    String? imageUrl,
    required String createdAt,
    required bool isMyMessage,
  }) = _MessageDto;

  factory MessageDto.fromJson(Map<String, dynamic> json) =>
      _$MessageDtoFromJson(json);
}

extension MessageDtoX on MessageDto {
  MessageEntity toEntity() => MessageEntity(
        messageId: messageId,
        roomId: roomId,
        senderId: senderId,
        senderNickname: senderNickname,
        senderProfileImage: senderProfileImage,
        message: message,
        imageUrl: imageUrl,
        createdAt: DateTime.parse(createdAt),
        isMyMessage: isMyMessage,
      );
}

@freezed
abstract class ChatRoomListItemDto with _$ChatRoomListItemDto {
  const factory ChatRoomListItemDto({
    required int roomId,
    required int ticketId,
    required String ticketTitle,
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
        otherUser: otherUser.toEntity(),
        lastMessage: lastMessage,
        lastMessageAt:
            lastMessageAt != null ? DateTime.parse(lastMessageAt!) : null,
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
    String? imageUrl,
    required String createdAt,
    required bool success,
  }) = _SendMessageRespDto;

  factory SendMessageRespDto.fromJson(Map<String, dynamic> json) =>
      _$SendMessageRespDtoFromJson(json);
}

extension SendMessageRespDtoX on SendMessageRespDto {
  MessageEntity toEntity() => MessageEntity(
        messageId: messageId,
        roomId: roomId,
        senderId: senderId,
        senderNickname: senderNickname,
        senderProfileImage: senderProfileImage,
        message: message,
        imageUrl: imageUrl,
        createdAt: DateTime.parse(createdAt),
        isMyMessage: true,
      );
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
  PaymentRequestEntity toEntity() => PaymentRequestEntity(
        paymentUrl: paymentUrl,
        transactionId: transactionId,
        amount: amount,
      );
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
