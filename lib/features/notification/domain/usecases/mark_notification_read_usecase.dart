import 'package:ticket_platform_mobile/features/notification/domain/repositories/notification_repository.dart';

class MarkNotificationReadUsecase {
  MarkNotificationReadUsecase(this._repository);

  final NotificationRepository _repository;

  Future<void> call(int notificationId) {
    return _repository.markAsRead(notificationId);
  }
}
