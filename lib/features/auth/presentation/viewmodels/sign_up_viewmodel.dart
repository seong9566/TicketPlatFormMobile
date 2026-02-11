import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/error_handler.dart';
import 'package:ticket_platform_mobile/features/auth/domain/usecases/sign_up_usecase.dart';
import 'package:ticket_platform_mobile/features/auth/domain/usecases/auth_params.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/providers/auth_providers_di.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/viewmodels/sign_up_state.dart';

part 'sign_up_viewmodel.g.dart';

@riverpod
class SignUpViewModel extends _$SignUpViewModel with ErrorHandler {
  SignUpUsecase get _signUpUsecase => ref.read(signUpUsecaseProvider);

  @override
  SignUpState build() => const SignUpState();

  void onEmailChanged(String value) {
    state = state.copyWith(email: value, errorMessage: null);
  }

  void onPasswordChanged(String value) {
    state = state.copyWith(password: value, errorMessage: null);
  }

  void onConfirmPasswordChanged(String value) {
    state = state.copyWith(confirmPassword: value, errorMessage: null);
  }

  void onPhoneChanged(String value) {
    state = state.copyWith(phone: value, errorMessage: null);
  }

  void toggleAgreed(bool? value) {
    state = state.copyWith(isAgreed: value ?? false);
  }

  void togglePasswordVisibility() {
    state = state.copyWith(isPasswordVisible: !state.isPasswordVisible);
  }

  void toggleConfirmPasswordVisibility() {
    state = state.copyWith(
      isConfirmPasswordVisible: !state.isConfirmPasswordVisible,
    );
  }

  Future<void> signUp() async {
    final trimmedEmail = state.email.trim();
    final trimmedPassword = state.password.trim();
    final trimmedConfirmPassword = state.confirmPassword.trim();
    final trimmedPhone = state.phone.trim();
    if (trimmedEmail.isEmpty ||
        trimmedPassword.isEmpty ||
        trimmedConfirmPassword.isEmpty) {
      state = state.copyWith(errorMessage: '모든 정보를 입력해주세요.');
      return;
    }

    if (trimmedPassword != trimmedConfirmPassword) {
      state = state.copyWith(errorMessage: '비밀번호가 일치하지 않습니다.');
      return;
    }

    if (!state.isAgreed) {
      state = state.copyWith(errorMessage: '약관에 동의해야 합니다.');
      return;
    }

    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      final params = SignUpParams(
        email: trimmedEmail,
        password: trimmedPassword,
        phone: trimmedPhone,
        provider: 'email',
      );

      await _signUpUsecase.call(params);
      state = state.copyWith(isLoading: false, isSuccess: true);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: handleError(e));
    }
  }
}
