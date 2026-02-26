import 'package:ticket_platform_mobile/features/auth/domain/repositories/auth_repository.dart';

class ForgotPasswordUseCase {
  final AuthRepository _repository;

  ForgotPasswordUseCase(this._repository);

  Future<void> call(String email) async {
    return await _repository.forgotPassword(email);
  }
}
