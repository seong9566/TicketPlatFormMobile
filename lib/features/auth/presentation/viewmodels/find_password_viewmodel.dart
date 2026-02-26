import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/error_handler.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/providers/auth_providers_di.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/viewmodels/find_password_state.dart';

part 'find_password_viewmodel.g.dart';

@riverpod
class FindPasswordViewModel extends _$FindPasswordViewModel with ErrorHandler {
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
      await ref.read(forgotPasswordUseCaseProvider).call(state.email);

      if (!ref.mounted) return;

      state = state.copyWith(isLoading: false, isLinkSent: true);
    } catch (e) {
      if (!ref.mounted) return;

      state = state.copyWith(isLoading: false, errorMessage: handleError(e));
    }
  }

  void reset() {
    state = const FindPasswordState();
  }
}
