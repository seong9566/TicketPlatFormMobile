import 'package:ticket_platform_mobile/features/profile/domain/repositories/profile_repository.dart';

/// 비밀번호 변경 UseCase
class ChangePasswordUsecase {
  final ProfileRepository _repository;

  ChangePasswordUsecase(this._repository);

  /// 비밀번호 변경 실행
  /// [currentPassword] 현재 비밀번호
  /// [newPassword] 새 비밀번호
  Future<void> call({
    required String currentPassword,
    required String newPassword,
  }) {
    return _repository.changePassword(
      currentPassword: currentPassword,
      newPassword: newPassword,
    );
  }
}
