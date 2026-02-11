import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/error_handler.dart';
import 'package:ticket_platform_mobile/features/auth/domain/usecases/google_sign_in_usecase.dart';
import 'package:ticket_platform_mobile/features/auth/domain/usecases/kakao_sign_in_usecase.dart';
import 'package:ticket_platform_mobile/features/auth/domain/usecases/login_usecase.dart';
import 'package:ticket_platform_mobile/features/auth/domain/usecases/auth_params.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/providers/auth_providers_di.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/viewmodels/login_state.dart';

part 'login_viewmodel.g.dart';

@riverpod
class LoginViewModel extends _$LoginViewModel with ErrorHandler {
  LoginUsecase get _loginUsecase => ref.read(loginUsecaseProvider);
  GoogleSignInUsecase get _googleSignInUsecase =>
      ref.read(googleSignInUsecaseProvider);
  KakaoSignInUsecase get _kakaoSignInUsecase =>
      ref.read(kakaoSignInUsecaseProvider);

  @override
  LoginState build() =>
      const LoginState(email: 'test@test.com', password: '1234');

  void onEmailChanged(String value) {
    state = state.copyWith(email: value, errorMessage: null);
  }

  void onPasswordChanged(String value) {
    state = state.copyWith(password: value, errorMessage: null);
  }

  void togglePasswordVisibility() {
    state = state.copyWith(isPasswordVisible: !state.isPasswordVisible);
  }

  Future<void> login() async {
    final trimmedEmail = state.email.trim();
    final trimmedPassword = state.password.trim();
    if (trimmedEmail.isEmpty || trimmedPassword.isEmpty) {
      state = state.copyWith(errorMessage: '이메일과 비밀번호를 모두 입력해주세요.');
      return;
    }

    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      final params = LoginParams(
        email: trimmedEmail,
        password: trimmedPassword,
      );
      await _loginUsecase.call(params);
      state = state.copyWith(isLoading: false, isSuccess: true);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: handleError(e));
    }
  }

  Future<void> signInWithGoogle() async {
    if (state.isLoading) return;

    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final user = await _googleSignInUsecase.call();
      if (user == null) {
        state = state.copyWith(isLoading: false);
        return;
      }
      state = state.copyWith(isLoading: false, isSuccess: true);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: handleError(e));
    }
  }

  Future<void> signInWithKakao() async {
    if (state.isLoading) return;

    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final user = await _kakaoSignInUsecase.call();
      if (user == null) {
        state = state.copyWith(isLoading: false);
        return;
      }
      state = state.copyWith(isLoading: false, isSuccess: true);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: handleError(e));
    }
  }

  void clearError() {
    state = state.copyWith(errorMessage: null);
  }
}
