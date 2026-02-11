import 'package:ticket_platform_mobile/features/notification/domain/repositories/notification_repository.dart';

class RegisterFcmTokenUsecase {
  RegisterFcmTokenUsecase(this._repository);

  final NotificationRepository _repository;

  Future<void> call({required String deviceToken, required String platform}) {
    return _repository.registerToken(
      deviceToken: deviceToken,
      platform: platform,
    );
  }
}
