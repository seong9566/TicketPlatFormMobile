import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/bank_account/domain/entities/bank_account_entity.dart';
import 'package:ticket_platform_mobile/features/bank_account/presentation/providers/bank_account_providers_di.dart';

part 'bank_account_viewmodel.freezed.dart';
part 'bank_account_viewmodel.g.dart';

enum VerificationState {
  idle,
  requesting,
  codeInput,
  tossVerified,
  verified,
  error,
}

@freezed
abstract class BankAccountState with _$BankAccountState {
  const factory BankAccountState({
    BankAccountEntity? bankAccount,
    @Default(VerificationState.idle) VerificationState verificationState,
    @Default(false) bool isSubmitting,
    String? error,
    DateTime? expiresAt,
    @Default(0) int remainingSeconds,
    String? verificationProvider,
    String? verificationTier,
    String? reasonCode,
  }) = _BankAccountState;
}

@riverpod
class BankAccountViewModel extends _$BankAccountViewModel {
  Timer? _timer;

  @override
  FutureOr<BankAccountState> build() async {
    ref.onDispose(() => _timer?.cancel());
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
        current.copyWith(
          bankAccount: account,
          isSubmitting: false,
          verificationState: account?.verified == true
              ? VerificationState.verified
              : current.verificationState,
        ),
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
        current.copyWith(
          isSubmitting: false,
          bankAccount: account,
          verificationState: VerificationState.idle,
        ),
      );
    } catch (e, stack) {
      AppLogger.e('계좌 등록 실패', e, stack);
      state = AsyncValue.data(
        current.copyWith(
          isSubmitting: false,
          error: e.toString(),
          verificationState: VerificationState.error,
        ),
      );
    }
  }

  Future<void> requestVerification() async {
    final current = state.value ?? const BankAccountState();
    state = AsyncValue.data(
      current.copyWith(
        isSubmitting: true,
        error: null,
        verificationState: VerificationState.requesting,
      ),
    );

    try {
      final result = await ref.read(requestVerificationUsecaseProvider).call();

      // Toss Provider: 코드 입력 불필요, 즉시 confirm 호출
      if (result.provider == 'TOSS' ||
          (result.provider == 'HYBRID' && result.expiresAt == null)) {
        await _confirmTossVerification(current, result.verificationTier);
        return;
      }

      // Custom 경로: 코드 입력 화면으로 전환
      final remaining = result.expiresAt != null
          ? result.expiresAt!.difference(DateTime.now()).inSeconds
          : 0;
      state = AsyncValue.data(
        current.copyWith(
          isSubmitting: false,
          expiresAt: result.expiresAt,
          remainingSeconds: remaining > 0 ? remaining : 0,
          verificationState: VerificationState.codeInput,
          verificationProvider: result.provider,
          verificationTier: result.verificationTier,
          reasonCode: result.reasonCode,
        ),
      );
      _startTimer();
    } catch (e, stack) {
      AppLogger.e('인증 요청 실패', e, stack);
      state = AsyncValue.data(
        current.copyWith(
          isSubmitting: false,
          error: e.toString(),
          verificationState: VerificationState.error,
        ),
      );
    }
  }

  Future<void> _confirmTossVerification(
    BankAccountState current,
    String verificationTier,
  ) async {
    try {
      final verified = await ref
          .read(confirmVerificationUsecaseProvider)
          .call(code: '');
      final account = await ref.read(getBankAccountUsecaseProvider).call();
      state = AsyncValue.data(
        current.copyWith(
          isSubmitting: false,
          bankAccount: account,
          verificationState: verified
              ? VerificationState.tossVerified
              : VerificationState.error,
          verificationProvider: 'TOSS',
          verificationTier: verificationTier,
        ),
      );
      if (verified) {
        _timer?.cancel();
      }
    } catch (e, stack) {
      AppLogger.e('Toss 인증 실패', e, stack);
      state = AsyncValue.data(
        current.copyWith(
          isSubmitting: false,
          error: e.toString(),
          verificationState: VerificationState.error,
        ),
      );
    }
  }

  Future<void> confirmVerification(String code) async {
    final current = state.value ?? const BankAccountState();
    state = AsyncValue.data(current.copyWith(isSubmitting: true, error: null));

    try {
      final verified = await ref
          .read(confirmVerificationUsecaseProvider)
          .call(code: code);
      final account = await ref.read(getBankAccountUsecaseProvider).call();
      state = AsyncValue.data(
        current.copyWith(
          isSubmitting: false,
          bankAccount: account,
          verificationState: verified
              ? VerificationState.verified
              : VerificationState.error,
        ),
      );
      if (verified) {
        _timer?.cancel();
      }
    } catch (e, stack) {
      AppLogger.e('인증 확인 실패', e, stack);
      state = AsyncValue.data(
        current.copyWith(
          isSubmitting: false,
          error: e.toString(),
          verificationState: VerificationState.error,
        ),
      );
    }
  }

  Future<void> deleteAccount() async {
    final current = state.value ?? const BankAccountState();
    state = AsyncValue.data(current.copyWith(isSubmitting: true, error: null));

    try {
      await ref.read(deleteBankAccountUsecaseProvider).call();
      _timer?.cancel();
      state = const AsyncValue.data(BankAccountState());
    } catch (e, stack) {
      AppLogger.e('계좌 삭제 실패', e, stack);
      state = AsyncValue.data(
        current.copyWith(isSubmitting: false, error: e.toString()),
      );
    }
  }

 /// 계좌 변경: 기존 계좌 삭제 후 새 등록을 위한 상태 초기화
  Future<void> changeAccount() async {
    await deleteAccount();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      final current = state.value;
      if (current == null || current.remainingSeconds <= 0) {
        _timer?.cancel();
        return;
      }

      state = AsyncValue.data(
        current.copyWith(remainingSeconds: current.remainingSeconds - 1),
      );
    });
  }

  static String mapReasonCodeToMessage(String? reasonCode, String fallback) {
    return switch (reasonCode) {
      'INVALID_INPUT' => '입력 정보를 다시 확인해주세요.',
      'ACCOUNT_MISMATCH' => '계좌/예금주 정보가 일치하지 않습니다.',
      'IDENTITY_MISMATCH' => '본인(사업자) 정보가 일치하지 않습니다.',
      'UPSTREAM_TEMPORARY' => '은행 점검 중입니다. 잠시 후 다시 시도해주세요.',
      'PROVIDER_AUTH_ERROR' => '인증 서비스 설정 문제입니다. 잠시 후 다시 시도해주세요.',
      _ => fallback,
    };
  }
}
