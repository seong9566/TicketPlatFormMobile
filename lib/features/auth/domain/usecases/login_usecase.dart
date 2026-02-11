import 'package:ticket_platform_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:ticket_platform_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:ticket_platform_mobile/features/auth/domain/usecases/auth_params.dart';

class LoginUsecase {
  final AuthRepository _repository;

  LoginUsecase(this._repository);

  Future<UserEntity> call(LoginParams params) async {
    return await _repository.login(params);
  }
}
