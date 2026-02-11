import 'package:ticket_platform_mobile/features/notification/domain/repositories/notification_repository.dart';

class MarkAllNotificationsReadUsecase {
  MarkAllNotificationsReadUsecase(this._repository);

  final NotificationRepository _repository;

  Future<int> call() {
    return _repository.markAllAsRead();
  }
}
