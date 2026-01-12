import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/viewmodels/sign_up_state.dart';

part 'sign_up_viewmodel.g.dart';

@riverpod
class SignUpViewModel extends _$SignUpViewModel {
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
    if (state.email.isEmpty ||
        state.password.isEmpty ||
        state.confirmPassword.isEmpty) {
      state = state.copyWith(errorMessage: '모든 정보를 입력해주세요.');
      return;
    }

    if (state.password != state.confirmPassword) {
      state = state.copyWith(errorMessage: '비밀번호가 일치하지 않습니다.');
      return;
    }

    if (!state.isAgreed) {
      state = state.copyWith(errorMessage: '약관에 동의해야 합니다.');
      return;
    }

    state = state.copyWith(isLoading: true, errorMessage: null);

    // TODO: Implement actual Sign Up logic
    await Future.delayed(const Duration(seconds: 1));

    state = state.copyWith(isLoading: false);
    // Success logic would typically involve navigation or showing a success message
  }
}
