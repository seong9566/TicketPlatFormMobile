import 'package:ticket_platform_mobile/features/auth/data/dto/request/auth_req_dto.dart';
import 'package:ticket_platform_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:ticket_platform_mobile/features/auth/domain/repositories/auth_repository.dart';

class LoginUsecase {
  final AuthRepository _repository;

  LoginUsecase(this._repository);

  Future<UserEntity> call(LoginReqDto req) async {
    return await _repository.login(req);
  }
}
