import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/bank_account/domain/entities/bank_account_entity.dart';
import 'package:ticket_platform_mobile/features/bank_account/presentation/providers/bank_account_providers_di.dart';

part 'bank_account_viewmodel.freezed.dart';
part 'bank_account_viewmodel.g.dart';

@freezed
abstract class BankAccountState with _$BankAccountState {
  const factory BankAccountState({
    BankAccountEntity? bankAccount,
    @Default(false) bool isSubmitting,
    String? error,
  }) = _BankAccountState;
}

@riverpod
class BankAccountViewModel extends _$BankAccountViewModel {
  @override
  Future<BankAccountState> build() async {
    final usecase = ref.read(getBankAccountUsecaseProvider);
    final account = await usecase.call();
    return BankAccountState(bankAccount: account);
  }

  Future<void> refreshAccount() async {
    final current = state.value ?? const BankAccountState();
    state = AsyncValue.data(current.copyWith(isSubmitting: true, error: null));

    try {
      final account = await ref.read(getBankAccountUsecaseProvider).call();
      state = AsyncValue.data(
        current.copyWith(bankAccount: account, isSubmitting: false),
      );
    } catch (e, stack) {
      AppLogger.e('계좌 조회 실패', e, stack);
      state = AsyncValue.data(
        current.copyWith(isSubmitting: false, error: e.toString()),
      );
    }
  }

  Future<void> register({
    required String bankName,
    required String bankCode,
    required String accountNumber,
    required String accountHolder,
  }) async {
    final current = state.value ?? const BankAccountState();
    state = AsyncValue.data(current.copyWith(isSubmitting: true, error: null));

    try {
      final account = await ref
          .read(registerBankAccountUsecaseProvider)
          .call(
            bankName: bankName,
            bankCode: bankCode,
            accountNumber: accountNumber,
            accountHolder: accountHolder,
          );

      state = AsyncValue.data(
        current.copyWith(isSubmitting: false, bankAccount: account),
      );
    } catch (e, stack) {
      AppLogger.e('계좌 등록 실패', e, stack);
      state = AsyncValue.data(
        current.copyWith(isSubmitting: false, error: e.toString()),
      );
    }
  }

  Future<void> deleteAccount() async {
    final current = state.value ?? const BankAccountState();
    state = AsyncValue.data(current.copyWith(isSubmitting: true, error: null));

    try {
      await ref.read(deleteBankAccountUsecaseProvider).call();
      state = const AsyncValue.data(BankAccountState());
    } catch (e, stack) {
      AppLogger.e('계좌 삭제 실패', e, stack);
      state = AsyncValue.data(
        current.copyWith(isSubmitting: false, error: e.toString()),
      );
    }
  }

  Future<void> changeAccount() async {
    await deleteAccount();
  }
}
