import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:ticket_platform_mobile/features/auth/data/repositories/social_oauth_repository_impl.dart';
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
    ref.watch(socialOAuthRepositoryProvider),
    ref.watch(authRepositoryProvider),
  );
}

@riverpod
KakaoSignInUsecase kakaoSignInUsecase(Ref ref) {
  return KakaoSignInUsecase(
    ref.watch(socialOAuthRepositoryProvider),
    ref.watch(authRepositoryProvider),
  );
}
