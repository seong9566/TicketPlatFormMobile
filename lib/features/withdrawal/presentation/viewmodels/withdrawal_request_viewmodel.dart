import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/withdrawal/presentation/providers/withdrawal_providers_di.dart';
import 'package:ticket_platform_mobile/features/withdrawal/presentation/viewmodels/withdrawal_request_state.dart';

part 'withdrawal_request_viewmodel.g.dart';

@riverpod
class WithdrawalRequestViewModel extends _$WithdrawalRequestViewModel {
  @override
  WithdrawalRequestState build() {
    return const WithdrawalRequestState();
  }

  Future<void> requestWithdrawal(int amount, {int? bankAccountId}) async {
    state = state.copyWith(
      isSubmitting: true,
      isSuccess: false,
      errorMessage: null,
    );

    try {
      final result = await ref
          .read(requestWithdrawalUsecaseProvider)
          .call(amount: amount, bankAccountId: bankAccountId);

      if (!ref.mounted) {
        return;
      }

      state = state.copyWith(
        isSubmitting: false,
        isSuccess: true,
        result: result,
      );
    } catch (e) {
      if (!ref.mounted) {
        return;
      }

      state = state.copyWith(
        isSubmitting: false,
        isSuccess: false,
        errorMessage: e.toString(),
      );
    }
  }
}
