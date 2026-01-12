import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/viewmodels/find_password_state.dart';

part 'find_password_viewmodel.g.dart';

@riverpod
class FindPasswordViewModel extends _$FindPasswordViewModel {
  @override
  FindPasswordState build() => const FindPasswordState();

  void onEmailChanged(String value) {
    state = state.copyWith(email: value, errorMessage: null);
  }

  Future<void> sendResetLink() async {
    if (state.email.isEmpty) {
      state = state.copyWith(errorMessage: '이메일을 입력해주세요.');
      return;
    }

    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      // TODO: Implement actual reset logic via UseCase
      await Future.delayed(const Duration(seconds: 1));
      state = state.copyWith(isLoading: false, isLinkSent: true);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: '재설정 링크 발송에 실패했습니다. 다시 시도해주세요.',
      );
    }
  }

  void reset() {
    state = const FindPasswordState();
  }
}
