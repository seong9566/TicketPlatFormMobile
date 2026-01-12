import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/auth/data/dto/request/auth_req_dto.dart';
import 'package:ticket_platform_mobile/features/auth/domain/usecases/login_usecase.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/providers/auth_providers_di.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/viewmodels/login_state.dart';

part 'login_viewmodel.g.dart';

@riverpod
class LoginViewModel extends _$LoginViewModel {
  LoginUsecase get _loginUsecase => ref.read(loginUsecaseProvider);

  @override
  LoginState build() => const LoginState();

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
    if (state.email.isEmpty || state.password.isEmpty) {
      state = state.copyWith(errorMessage: '이메일과 비밀번호를 모두 입력해주세요.');
      return;
    }

    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      final req = LoginReqDto(email: state.email, password: state.password);
      await _loginUsecase.call(req);
      state = state.copyWith(isLoading: false, isSuccess: true);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: '로그인에 실패했습니다. 다시 시도해주세요.',
      );
    }
  }

  void clearError() {
    state = state.copyWith(errorMessage: null);
  }
}
