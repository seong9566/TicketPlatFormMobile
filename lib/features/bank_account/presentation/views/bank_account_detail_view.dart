import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/bank_account/presentation/viewmodels/bank_account_viewmodel.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_button.dart';

class BankAccountDetailView extends ConsumerWidget {
  const BankAccountDetailView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bankAccountViewModelProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('내 정산 계좌')),
      body: state.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text(error.toString())),
        data: (data) {
          final account = data.bankAccount;
          if (account == null) {
            return Center(
              child: AppButton(
                text: '계좌 등록하기',
                width: 180,
                onPressed: () =>
                    context.goNamed(AppRouterPath.bankAccountRegister.name),
              ),
            );
          }

          return Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('은행명', style: AppTextStyles.caption),
                const SizedBox(height: AppSpacing.xs),
                Text(account.bankName, style: AppTextStyles.body1),
                const SizedBox(height: AppSpacing.md),
                Text('계좌번호', style: AppTextStyles.caption),
                const SizedBox(height: AppSpacing.xs),
                Text(account.accountNumber, style: AppTextStyles.body1),
                const SizedBox(height: AppSpacing.md),
                Text('예금주', style: AppTextStyles.caption),
                const SizedBox(height: AppSpacing.xs),
                Text(account.accountHolder, style: AppTextStyles.body1),
                const SizedBox(height: AppSpacing.md),
                Text('인증 상태', style: AppTextStyles.caption),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  account.verified ? '인증 완료' : '미인증',
                  style: AppTextStyles.body1.copyWith(
                    color: account.verified
                        ? AppColors.success
                        : AppColors.warning,
                  ),
                ),
                const Spacer(),
                if (!account.verified)
                  AppButton(
                    text: '계좌 인증 진행',
                    onPressed: () =>
                        context.goNamed(AppRouterPath.bankAccountVerify.name),
                  ),
                const SizedBox(height: AppSpacing.md),
                AppButton(
                  text: '계좌 삭제',
                  backgroundColor: AppColors.error,
                  onPressed: () async {
                    await ref
                        .read(bankAccountViewModelProvider.notifier)
                        .deleteAccount();
                    if (context.mounted) {
                      context.goNamed(AppRouterPath.bankAccountRegister.name);
                    }
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
