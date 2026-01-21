import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_entity.freezed.dart';

@freezed
abstract class MessageEntity with _$MessageEntity {
  const factory MessageEntity({
    required int messageId,
    required int roomId,
    required int senderId,
    required String senderNickname,
    String? senderProfileImage,
    String? message,
    String? imageUrl,
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
