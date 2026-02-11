import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_entity.freezed.dart';

@freezed
abstract class NotificationEntity with _$NotificationEntity {
  const factory NotificationEntity({
    required int id,
    @Default('') String typeCode,
    @Default('') String typeName,
    @Default('') String title,
    @Default('') String body,
    @Default({}) Map<String, dynamic> data,
    @Default(false) bool isRead,
    DateTime? readAt,
    DateTime? createdAt,
  }) = _NotificationEntity;
}
