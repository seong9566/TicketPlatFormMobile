import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/viewmodels/find_id_state.dart';

part 'find_id_viewmodel.g.dart';

@riverpod
class FindIdViewModel extends _$FindIdViewModel {
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
      // TODO: Implement actual find ID logic via UseCase
      await Future.delayed(const Duration(seconds: 1));
      // Mock result
      state = state.copyWith(isLoading: false, foundId: 'user***@email.com');
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: '아이디 찾기에 실패했습니다. 다시 시도해주세요.',
      );
    }
  }

  void clearFoundId() {
    state = state.copyWith(foundId: null);
  }
}
