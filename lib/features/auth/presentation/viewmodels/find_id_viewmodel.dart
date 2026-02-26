import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/error_handler.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/providers/auth_providers_di.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/viewmodels/find_id_state.dart';

part 'find_id_viewmodel.g.dart';

@riverpod
class FindIdViewModel extends _$FindIdViewModel with ErrorHandler {
  @override
  FindIdState build() => const FindIdState();

  void onPhoneNumberChanged(String value) {
    state = state.copyWith(phoneNumber: value, errorMessage: null);
  }

  Future<void> findId() async {
    if (state.phoneNumber.isEmpty) {
      state = state.copyWith(errorMessage: '휴대폰 번호를 입력해주세요.');
      return;
    }

    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      final maskedEmail = await ref
          .read(findIdUseCaseProvider)
          .call(state.phoneNumber);

      if (!ref.mounted) return;

      state = state.copyWith(isLoading: false, foundId: maskedEmail);
    } catch (e) {
      if (!ref.mounted) return;

      state = state.copyWith(isLoading: false, errorMessage: handleError(e));
    }
  }

  void clearFoundId() {
    state = state.copyWith(foundId: null);
  }
}
