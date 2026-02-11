import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/auth/data/datasources/google_oauth_data_source.dart';
import 'package:ticket_platform_mobile/features/auth/data/datasources/kakao_oauth_data_source.dart';
import 'package:ticket_platform_mobile/features/auth/domain/repositories/social_oauth_repository.dart';

part 'social_oauth_repository_impl.g.dart';

class SocialOAuthRepositoryImpl implements SocialOAuthRepository {
  final GoogleOAuthDataSource _googleOAuthDataSource;
  final KakaoOAuthDataSource _kakaoOAuthDataSource;

  SocialOAuthRepositoryImpl(
    this._googleOAuthDataSource,
    this._kakaoOAuthDataSource,
  );

  @override
  Future<String?> signInWithGoogle() {
    return _googleOAuthDataSource.signIn();
  }

  @override
  Future<String?> signInWithKakao() {
    return _kakaoOAuthDataSource.signIn();
  }
}

@riverpod
SocialOAuthRepository socialOAuthRepository(Ref ref) {
  return SocialOAuthRepositoryImpl(
    ref.watch(googleOAuthDataSourceProvider),
    ref.watch(kakaoOAuthDataSourceProvider),
  );
}
