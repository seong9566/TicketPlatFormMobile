import 'package:ticket_platform_mobile/features/notification/domain/repositories/notification_repository.dart';

class DeleteFcmTokenUsecase {
  DeleteFcmTokenUsecase(this._repository);

  final NotificationRepository _repository;

  Future<void> call({required String deviceToken}) {
    return _repository.deleteToken(deviceToken: deviceToken);
  }
}
