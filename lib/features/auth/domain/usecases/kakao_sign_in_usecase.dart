import 'package:ticket_platform_mobile/features/auth/data/datasources/kakao_oauth_data_source.dart';
import 'package:ticket_platform_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:ticket_platform_mobile/features/auth/domain/repositories/auth_repository.dart';

class KakaoSignInUsecase {
  final KakaoOAuthDataSource _kakaoOAuthDataSource;
  final AuthRepository _authRepository;

  KakaoSignInUsecase(this._kakaoOAuthDataSource, this._authRepository);

  Future<UserEntity?> call() async {
    final accessToken = await _kakaoOAuthDataSource.signIn();
    if (accessToken == null || accessToken.isEmpty) {
      return null;
    }

    return _authRepository.socialLogin(
      provider: 'kakao',
      accessToken: accessToken,
    );
  }
}
