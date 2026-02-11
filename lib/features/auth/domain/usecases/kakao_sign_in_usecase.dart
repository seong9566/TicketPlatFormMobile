import 'package:ticket_platform_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:ticket_platform_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:ticket_platform_mobile/features/auth/domain/repositories/social_oauth_repository.dart';
import 'package:ticket_platform_mobile/features/auth/domain/usecases/auth_params.dart';

class KakaoSignInUsecase {
  final SocialOAuthRepository _socialOAuthRepository;
  final AuthRepository _authRepository;

  KakaoSignInUsecase(this._socialOAuthRepository, this._authRepository);

  Future<UserEntity?> call() async {
    final accessToken = await _socialOAuthRepository.signInWithKakao();
    if (accessToken == null || accessToken.isEmpty) {
      return null;
    }

    return _authRepository.socialLogin(
      SocialLoginParams(provider: 'kakao', accessToken: accessToken),
    );
  }
}
