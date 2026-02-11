import 'package:ticket_platform_mobile/features/auth/domain/entities/sign_up_entity.dart';
import 'package:ticket_platform_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:ticket_platform_mobile/features/auth/domain/usecases/auth_params.dart';

class SignUpUsecase {
  final AuthRepository _repository;

  SignUpUsecase(this._repository);

  Future<SignUpEntity> call(SignUpParams params) async {
    return await _repository.signUp(params);
  }
}
