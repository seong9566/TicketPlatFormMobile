import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';
import 'package:ticket_platform_mobile/features/withdrawal/presentation/viewmodels/balance_viewmodel.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_button.dart';

class BalanceOverviewView extends ConsumerStatefulWidget {
  const BalanceOverviewView({super.key});

  @override
  ConsumerState<BalanceOverviewView> createState() =>
      _BalanceOverviewViewState();
}

class _BalanceOverviewViewState extends ConsumerState<BalanceOverviewView> {
  @override
  Widget build(BuildContext context) {
    final balanceAsync = ref.watch(balanceViewModelProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('내 잔고')),
      body: balanceAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text(error.toString())),
        data: (balance) {
          return RefreshIndicator(
            onRefresh: () =>
                ref.read(balanceViewModelProvider.notifier).refresh(),
            child: ListView(
              padding: const EdgeInsets.all(AppSpacing.lg),
              children: [
                Container(
                  padding: const EdgeInsets.all(AppSpacing.lg),
                  decoration: BoxDecoration(
                    color: AppColors.card,
                    borderRadius: BorderRadius.circular(AppRadius.lg),
                    border: Border.all(color: AppColors.border),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '출금 가능 금액',
                        style: AppTextStyles.body2.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      Text(
                        NumberFormatUtil.formatPrice(balance.available),
                        style: AppTextStyles.heading2.copyWith(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.lg),
                      _buildSummaryRow('정산 대기', balance.pending),
                      const SizedBox(height: AppSpacing.xs),
                      _buildSummaryRow('누적 수익', balance.totalEarned),
                      const SizedBox(height: AppSpacing.xs),
                      _buildSummaryRow('누적 출금', balance.totalWithdrawn),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.lg),
                AppButton(
                  text: '출금하기',
                  onPressed: () {
                    context.pushNamed(AppRouterPath.withdrawalRequest.name);
                  },
                ),
                const SizedBox(height: AppSpacing.sm),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      context.pushNamed(AppRouterPath.withdrawalHistory.name);
                    },
                    child: Text(
                      '출금 내역',
                      style: AppTextStyles.body2.copyWith(
                        color: AppColors.info,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildSummaryRow(String label, int amount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: AppTextStyles.caption.copyWith(color: AppColors.textSecondary),
        ),
        Text(NumberFormatUtil.formatPrice(amount), style: AppTextStyles.body1),
      ],
    );
  }
}
