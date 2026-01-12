import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/error_handler.dart';
import 'package:ticket_platform_mobile/features/auth/data/dto/request/auth_req_dto.dart';
import 'package:ticket_platform_mobile/features/auth/domain/usecases/sign_up_usecase.dart';
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

    try {
      final req = SignUpReqDto(
        email: state.email,
        password: state.password,
        phone: state.phone,
        provider: 'email',
      );

      await _signUpUsecase.call(req);
      state = state.copyWith(isLoading: false, isSuccess: true);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: handleError(e));
    }
  }
}
