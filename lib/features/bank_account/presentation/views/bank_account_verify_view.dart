import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/features/bank_account/presentation/viewmodels/bank_account_viewmodel.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_button.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_text_field.dart';

class BankAccountVerifyView extends ConsumerStatefulWidget {
  const BankAccountVerifyView({super.key});

  @override
  ConsumerState<BankAccountVerifyView> createState() =>
      _BankAccountVerifyViewState();
}

class _BankAccountVerifyViewState extends ConsumerState<BankAccountVerifyView> {
  final _codeController = TextEditingController();
  bool _hasNavigated = false;

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(bankAccountViewModelProvider).value;
    final isSubmitting = state?.isSubmitting ?? false;
    final verificationState =
        state?.verificationState ?? VerificationState.idle;
    final seconds = state?.remainingSeconds ?? 0;
    final hasRequestedCode =
        verificationState == VerificationState.codeInput ||
        verificationState == VerificationState.verified ||
        seconds > 0;

    // Toss Provider 즉시 인증 완료 → 딜레이 후 자동 이동
    if (verificationState == VerificationState.tossVerified && !_hasNavigated) {
      _hasNavigated = true;
      final nav = GoRouter.of(context);
      Future.delayed(const Duration(milliseconds: 1500), () {
        if (mounted) nav.goNamed(AppRouterPath.bankAccountDetail.name);
      });
    }

    return Scaffold(
      appBar: AppBar(title: const Text('계좌 인증')),
      body: SafeArea(
        child: verificationState == VerificationState.tossVerified
            ? _buildTossVerifiedState()
            : _buildCustomVerifyFlow(
                isSubmitting,
                verificationState,
                seconds,
                hasRequestedCode,
                state,
              ),
      ),
    );
  }

  /// Toss 인증 완료 — 성공 화면
  Widget _buildTossVerifiedState() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 성공 아이콘 (애니메이션 효과)
            TweenAnimationBuilder<double>(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: const Duration(milliseconds: 600),
              curve: Curves.elasticOut,
              builder: (context, value, child) {
                return Transform.scale(scale: value, child: child);
              },
              child: Container(
                width: 88,
                height: 88,
                decoration: BoxDecoration(
                  color: AppColors.primaryLight,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.check_circle,
                  color: AppColors.primary,
                  size: 56,
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            Text('계좌 인증 완료', style: AppTextStyles.heading2),
            const SizedBox(height: AppSpacing.sm),
            Text(
              '계좌 정보가 실시간으로 확인되었습니다.',
              style: AppTextStyles.body2.copyWith(
                color: AppColors.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.xl),
            // 자동 이동 인디케이터
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: AppColors.textTertiary,
                  ),
                ),
                const SizedBox(width: AppSpacing.sm),
                Text(
                  '잠시 후 자동으로 이동합니다...',
                  style: AppTextStyles.caption.copyWith(
                    color: AppColors.textTertiary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.xl),
            AppButton(
              text: '확인',
              width: 200,
              onPressed: () =>
                  context.goNamed(AppRouterPath.bankAccountDetail.name),
            ),
          ],
        ),
      ),
    );
  }

  /// Custom 인증 플로우 — 코드 요청 + 입력
  Widget _buildCustomVerifyFlow(
    bool isSubmitting,
    VerificationState verificationState,
    int seconds,
    bool hasRequestedCode,
    BankAccountState? state,
  ) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 헤더
                Text('1원 인증', style: AppTextStyles.heading2),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  '등록한 계좌로 1원이 입금됩니다.\n입금 내역의 인증 코드를 입력해주세요.',
                  style: AppTextStyles.body2.copyWith(
                    color: AppColors.textSecondary,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: AppSpacing.xl),

                // Step 1: 인증 요청
                _buildStepCard(
                  stepNumber: 1,
                  title: '인증 코드 발급',
                  isActive: true,
                  isCompleted: hasRequestedCode,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hasRequestedCode
                            ? '인증 코드가 발급되었습니다.'
                            : '아래 버튼을 눌러 인증을 시작하세요.',
                        style: AppTextStyles.caption.copyWith(
                          color: hasRequestedCode
                              ? AppColors.primary
                              : AppColors.textSecondary,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.md),
                      AppButton(
                        text: hasRequestedCode ? '재발급 요청' : '1원 인증 요청',
                        isLoading:
                            isSubmitting &&
                            verificationState == VerificationState.requesting,
                        backgroundColor: hasRequestedCode
                            ? AppColors.muted
                            : AppColors.primary,
                        foregroundColor: hasRequestedCode
                            ? AppColors.textSecondary
                            : Colors.white,
                        height: 48,
                        fontSize: 15,
                        onPressed: isSubmitting
                            ? null
                            : () => ref
                                  .read(bankAccountViewModelProvider.notifier)
                                  .requestVerification(),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: AppSpacing.md),

                // Step 2: 코드 입력
                _buildStepCard(
                  stepNumber: 2,
                  title: '인증 코드 입력',
                  isActive: hasRequestedCode,
                  isCompleted: false,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 타이머
                      if (hasRequestedCode && seconds > 0)
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            vertical: AppSpacing.sm,
                            horizontal: AppSpacing.md,
                          ),
                          margin: const EdgeInsets.only(bottom: AppSpacing.md),
                          decoration: BoxDecoration(
                            color: seconds > 60
                                ? AppColors.primaryLight.withValues(alpha: 0.5)
                                : AppColors.warning.withValues(alpha: 0.08),
                            borderRadius: BorderRadius.circular(AppRadius.sm),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.timer_outlined,
                                size: 18,
                                color: seconds > 60
                                    ? AppColors.primary
                                    : AppColors.warning,
                              ),
                              const SizedBox(width: AppSpacing.xs),
                              Text(
                                '남은 시간  ${_formatTime(seconds)}',
                                style: AppTextStyles.body1.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: seconds > 60
                                      ? AppColors.primary
                                      : AppColors.warning,
                                ),
                              ),
                            ],
                          ),
                        ),

                      if (!hasRequestedCode)
                        Text(
                          '먼저 인증 코드를 발급받아 주세요.',
                          style: AppTextStyles.caption.copyWith(
                            color: AppColors.textTertiary,
                          ),
                        ),

                      if (hasRequestedCode) ...[
                        AppTextField(
                          label: '인증 코드',
                          hintText: '4자리 숫자 입력',
                          controller: _codeController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(4),
                          ],
                        ),
                      ],

                      // 에러 메시지
                      if (state?.error != null) ...[
                        const SizedBox(height: AppSpacing.md),
                        _buildErrorCard(state!),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        // 하단 인증 완료 버튼
        if (hasRequestedCode)
          Container(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.lg,
              AppSpacing.md,
              AppSpacing.lg,
              AppSpacing.md,
            ),
            decoration: BoxDecoration(
              color: AppColors.background,
              border: Border(
                top: BorderSide(color: AppColors.border.withValues(alpha: 0.5)),
              ),
            ),
            child: AppButton(
              text: '인증 완료',
              isLoading:
                  isSubmitting &&
                  verificationState != VerificationState.requesting,
              onPressed: isSubmitting ? null : _confirm,
            ),
          ),
      ],
    );
  }

  Widget _buildStepCard({
    required int stepNumber,
    required String title,
    required bool isActive,
    required bool isCompleted,
    required Widget child,
  }) {
    return AnimatedOpacity(
      opacity: isActive ? 1.0 : 0.5,
      duration: const Duration(milliseconds: 300),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(AppSpacing.lg),
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(AppRadius.lg),
          border: Border.all(
            color: isCompleted
                ? AppColors.primary.withValues(alpha: 0.3)
                : AppColors.border,
          ),
          boxShadow: [
            if (isActive)
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.04),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: isCompleted
                        ? AppColors.primary
                        : isActive
                        ? AppColors.primaryLight
                        : AppColors.muted,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: isCompleted
                      ? const Icon(Icons.check, color: Colors.white, size: 16)
                      : Text(
                          '$stepNumber',
                          style: AppTextStyles.caption.copyWith(
                            color: isActive
                                ? AppColors.primary
                                : AppColors.textTertiary,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                ),
                const SizedBox(width: AppSpacing.sm),
                Text(
                  title,
                  style: AppTextStyles.body1.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.md),
            child,
          ],
        ),
      ),
    );
  }

  Widget _buildErrorCard(BankAccountState state) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.destructive.withValues(alpha: 0.06),
        borderRadius: BorderRadius.circular(AppRadius.sm),
        border: Border.all(
          color: AppColors.destructive.withValues(alpha: 0.15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.error_outline, size: 18, color: AppColors.destructive),
              const SizedBox(width: AppSpacing.xs),
              Expanded(
                child: Text(
                  BankAccountViewModel.mapReasonCodeToMessage(
                    state.reasonCode,
                    state.error!,
                  ),
                  style: AppTextStyles.caption.copyWith(
                    color: AppColors.destructive,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          GestureDetector(
            onTap: () => ref
                .read(bankAccountViewModelProvider.notifier)
                .requestVerification(),
            child: Text(
              '다시 시도 →',
              style: AppTextStyles.caption.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _confirm() async {
    final code = _codeController.text.trim();
    if (code.length != 4) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('4자리 인증 코드를 입력해주세요.'),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.sm),
          ),
        ),
      );
      return;
    }

    await ref
        .read(bankAccountViewModelProvider.notifier)
        .confirmVerification(code);
    if (!mounted) return;

    final state = ref.read(bankAccountViewModelProvider).value;
    if (state?.bankAccount?.verified == true) {
      context.goNamed(AppRouterPath.bankAccountDetail.name);
    }
  }

  String _formatTime(int seconds) {
    final minutes = seconds ~/ 60;
    final remain = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remain.toString().padLeft(2, '0')}';
  }
}
