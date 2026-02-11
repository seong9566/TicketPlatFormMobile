import 'package:ticket_platform_mobile/features/notification/domain/entities/notification_list_entity.dart';
import 'package:ticket_platform_mobile/features/notification/domain/repositories/notification_repository.dart';

class GetNotificationsUsecase {
  GetNotificationsUsecase(this._repository);

  final NotificationRepository _repository;

  Future<NotificationListEntity> call({String? cursor, int limit = 20}) {
    return _repository.getNotifications(cursor: cursor, limit: limit);
  }
}
