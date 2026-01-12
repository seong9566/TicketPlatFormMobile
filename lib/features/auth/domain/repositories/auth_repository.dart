import 'package:ticket_platform_mobile/features/auth/data/dto/request/auth_req_dto.dart';
import 'package:ticket_platform_mobile/features/auth/domain/entities/sign_up_entity.dart';
import 'package:ticket_platform_mobile/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepository {
  Future<UserEntity> login(LoginReqDto req);
  Future<SignUpEntity> signUp(SignUpReqDto req);
  Future<void> logout();
  Future<bool> refreshToken();
  Future<bool> hasToken();
}
