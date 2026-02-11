import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/notification/domain/entities/notification_entity.dart';

part 'notification_list_entity.freezed.dart';

@freezed
abstract class NotificationListEntity with _$NotificationListEntity {
  const factory NotificationListEntity({
    @Default([]) List<NotificationEntity> items,
    String? nextCursor,
    @Default(false) bool hasMore,
  }) = _NotificationListEntity;
}
