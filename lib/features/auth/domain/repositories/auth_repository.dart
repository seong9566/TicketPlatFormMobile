import 'package:ticket_platform_mobile/features/auth/domain/entities/sign_up_entity.dart';
import 'package:ticket_platform_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:ticket_platform_mobile/features/auth/domain/usecases/auth_params.dart';

abstract class AuthRepository {
  Future<UserEntity> login(LoginParams params);
  Future<UserEntity> socialLogin(SocialLoginParams params);
  Future<SignUpEntity> signUp(SignUpParams params);
  Future<void> logout();
  Future<bool> refreshToken();
  Future<bool> hasToken();
}
