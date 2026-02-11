import 'package:ticket_platform_mobile/features/auth/data/datasources/google_oauth_data_source.dart';
import 'package:ticket_platform_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:ticket_platform_mobile/features/auth/domain/repositories/auth_repository.dart';

class GoogleSignInUsecase {
  final GoogleOAuthDataSource _googleOAuthDataSource;
  final AuthRepository _authRepository;

  GoogleSignInUsecase(this._googleOAuthDataSource, this._authRepository);

  Future<UserEntity?> call() async {
    final accessToken = await _googleOAuthDataSource.signIn();
    if (accessToken == null || accessToken.isEmpty) {
      return null;
    }

    return _authRepository.socialLogin(
      provider: 'google',
      accessToken: accessToken,
    );
  }
}
