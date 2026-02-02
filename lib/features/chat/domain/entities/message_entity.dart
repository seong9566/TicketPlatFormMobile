import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_entity.freezed.dart';

@freezed
abstract class ImageInfoEntity with _$ImageInfoEntity {
  const factory ImageInfoEntity({required String url, DateTime? expiresAt}) =
      _ImageInfoEntity;
}

enum MessageType {
  @JsonValue('TEXT')
  text,
  @JsonValue('IMAGE')
  image,
  @JsonValue('PAYMENT_REQUEST')
  paymentRequest,
  @JsonValue('PAYMENT_SUCCESS')
  paymentSuccess,
  @JsonValue('PURCHASE_CONFIRMED')
  purchaseConfirmed,
}

@freezed
abstract class MessageEntity with _$MessageEntity {
  const factory MessageEntity({
    required int messageId,
    required int roomId,
    required int senderId,
    required String senderNickname,
    String? senderProfileImage,
    @Default(MessageType.text) MessageType type,
    String? message,
    List<ImageInfoEntity>? images,
    required DateTime createdAt,
    required bool isMyMessage,
  }) = _MessageEntity;
}

@freezed
abstract class ImageUrlRefreshEntity with _$ImageUrlRefreshEntity {
  const factory ImageUrlRefreshEntity({
    required String imageUrl,
    required DateTime expiresAt,
  }) = _ImageUrlRefreshEntity;
}
