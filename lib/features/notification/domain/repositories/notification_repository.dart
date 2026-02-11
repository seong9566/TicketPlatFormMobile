import 'package:ticket_platform_mobile/features/notification/domain/entities/notification_list_entity.dart';

abstract class NotificationRepository {
  Future<void> registerToken({
    required String deviceToken,
    required String platform,
  });

  Future<void> deleteToken({required String deviceToken});

  Future<NotificationListEntity> getNotifications({
    String? cursor,
    int limit = 20,
  });

  Future<void> markAsRead(int notificationId);

  Future<int> markAllAsRead();

  Future<int> getUnreadCount();
}
