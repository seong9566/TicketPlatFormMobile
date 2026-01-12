import 'package:ticket_platform_mobile/features/auth/data/dto/request/auth_req_dto.dart';
import 'package:ticket_platform_mobile/features/auth/domain/entities/sign_up_entity.dart';
import 'package:ticket_platform_mobile/features/auth/domain/repositories/auth_repository.dart';

class SignUpUsecase {
  final AuthRepository _repository;

  SignUpUsecase(this._repository);

  Future<SignUpEntity> call(SignUpReqDto req) async {
    return await _repository.signUp(req);
  }
}
