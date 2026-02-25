import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
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

    // Toss Provider 즉시 인증 완료 → 상세 화면으로 자동 이동
    if (verificationState == VerificationState.tossVerified) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) context.goNamed(AppRouterPath.bankAccountDetail.name);
      });
    }

    return Scaffold(
      appBar: AppBar(title: const Text('계좌 인증')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Toss Provider 즉시 인증 완료 상태
            if (verificationState == VerificationState.tossVerified) ...[
              const Icon(
                Icons.check_circle,
                color: AppColors.success,
                size: 48,
              ),
              const SizedBox(height: AppSpacing.md),
              Text('계좌 인증이 완료되었습니다.', style: AppTextStyles.heading3),
              const SizedBox(height: AppSpacing.sm),
              Text(
                '계좌 정보가 실시간으로 확인되었습니다.',
                style: AppTextStyles.body2.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: AppSpacing.xl),
              AppButton(
                text: '확인',
                onPressed: () =>
                    context.goNamed(AppRouterPath.bankAccountDetail.name),
              ),
            ]
            // Custom Provider 코드 입력 화면
            else ...[
              Text('1원 인증을 진행해주세요', style: AppTextStyles.heading3),
              const SizedBox(height: AppSpacing.sm),
              Text(
                '인증 요청 후 발급된 4자리 코드를 입력하세요.',
                style: AppTextStyles.body2.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              AppButton(
                text: '1원 인증 요청',
                isLoading:
                    isSubmitting &&
                    verificationState == VerificationState.requesting,
                onPressed: isSubmitting
                    ? null
                    : () => ref
                          .read(bankAccountViewModelProvider.notifier)
                          .requestVerification(),
              ),
              const SizedBox(height: AppSpacing.lg),
              AppTextField(
                label: '인증 코드',
                hintText: '4자리 코드 입력',
                controller: _codeController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
              const SizedBox(height: AppSpacing.sm),
              Text(
                seconds > 0
                    ? '남은 시간: ${_formatTime(seconds)}'
                    : '인증 코드를 요청해주세요.',
                style: AppTextStyles.caption.copyWith(
                  color: seconds > 0
                      ? AppColors.warning
                      : AppColors.textSecondary,
                ),
              ),
              // 에러 메시지 (reasonCode 기반)
              if (state?.error != null) ...[
                const SizedBox(height: AppSpacing.sm),
                Text(
                  BankAccountViewModel.mapReasonCodeToMessage(
                    state?.reasonCode,
                    state!.error!,
                  ),
                  style: AppTextStyles.caption.copyWith(color: AppColors.error),
                ),
                const SizedBox(height: AppSpacing.sm),
                AppButton(
                  text: '다시 시도',
                  onPressed: () => ref
                      .read(bankAccountViewModelProvider.notifier)
                      .requestVerification(),
                ),
              ],
              const SizedBox(height: AppSpacing.xl),
              AppButton(
                text: '인증 완료',
                isLoading:
                    isSubmitting &&
                    verificationState != VerificationState.requesting,
                onPressed: isSubmitting ? null : _confirm,
              ),
            ],
          ],
        ),
      ),
    );
  }

  Future<void> _confirm() async {
    final code = _codeController.text.trim();
    if (code.length != 4) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('4자리 인증 코드를 입력해주세요.')));
      return;
    }

    await ref
        .read(bankAccountViewModelProvider.notifier)
        .confirmVerification(code);
    if (!mounted) {
      return;
    }

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
