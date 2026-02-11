import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/auth/data/datasources/google_oauth_data_source.dart';
import 'package:ticket_platform_mobile/features/auth/data/datasources/kakao_oauth_data_source.dart';
import 'package:ticket_platform_mobile/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:ticket_platform_mobile/features/auth/domain/usecases/google_sign_in_usecase.dart';
import 'package:ticket_platform_mobile/features/auth/domain/usecases/kakao_sign_in_usecase.dart';
import 'package:ticket_platform_mobile/features/auth/domain/usecases/login_usecase.dart';
import 'package:ticket_platform_mobile/features/auth/domain/usecases/sign_up_usecase.dart';

part 'auth_providers_di.g.dart';

@riverpod
LoginUsecase loginUsecase(Ref ref) {
  return LoginUsecase(ref.watch(authRepositoryProvider));
}

@riverpod
SignUpUsecase signUpUsecase(Ref ref) {
  return SignUpUsecase(ref.watch(authRepositoryProvider));
}

@riverpod
GoogleSignInUsecase googleSignInUsecase(Ref ref) {
  return GoogleSignInUsecase(
    ref.watch(googleOAuthDataSourceProvider),
    ref.watch(authRepositoryProvider),
  );
}

@riverpod
KakaoSignInUsecase kakaoSignInUsecase(Ref ref) {
  return KakaoSignInUsecase(
    ref.watch(kakaoOAuthDataSourceProvider),
    ref.watch(authRepositoryProvider),
  );
}
