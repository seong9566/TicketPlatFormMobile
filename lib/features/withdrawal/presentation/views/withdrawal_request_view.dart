import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';
import 'package:ticket_platform_mobile/features/withdrawal/presentation/viewmodels/balance_viewmodel.dart';
import 'package:ticket_platform_mobile/features/withdrawal/presentation/viewmodels/withdrawal_request_viewmodel.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_button.dart';

class WithdrawalRequestView extends ConsumerStatefulWidget {
  const WithdrawalRequestView({super.key});

  @override
  ConsumerState<WithdrawalRequestView> createState() =>
      _WithdrawalRequestViewState();
}

class _WithdrawalRequestViewState extends ConsumerState<WithdrawalRequestView> {
  final TextEditingController _amountController = TextEditingController();

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final requestState = ref.watch(withdrawalRequestViewModelProvider);
    final balanceAsync = ref.watch(balanceViewModelProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('출금 요청')),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        children: [
          balanceAsync.when(
            loading: () => _buildBalanceCard('조회 중...'),
            error: (_, _) => _buildBalanceCard('조회 실패'),
            data: (balance) => _buildBalanceCard(
              NumberFormatUtil.formatPrice(balance.available),
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          Text('출금 금액', style: AppTextStyles.body1),
          const SizedBox(height: AppSpacing.sm),
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: '출금 금액을 입력하세요',
              hintStyle: AppTextStyles.body2,
              filled: true,
              fillColor: AppColors.card,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppRadius.md),
                borderSide: const BorderSide(color: AppColors.border),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppRadius.md),
                borderSide: const BorderSide(color: AppColors.border),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppRadius.md),
                borderSide: const BorderSide(color: AppColors.primary),
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              color: AppColors.primaryLight,
              borderRadius: BorderRadius.circular(AppRadius.md),
              border: Border.all(color: AppColors.border),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('출금 규칙', style: AppTextStyles.body1),
                const SizedBox(height: AppSpacing.xs),
                Text('• 최소 1,000원 이상 출금할 수 있습니다.', style: AppTextStyles.body2),
                Text('• 하루 최대 3회까지 출금할 수 있습니다.', style: AppTextStyles.body2),
                Text(
                  '• 하루 최대 5,000,000원까지 출금할 수 있습니다.',
                  style: AppTextStyles.body2,
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          AppButton(
            text: '출금하기',
            isLoading: requestState.isSubmitting,
            onPressed: requestState.isSubmitting ? null : _onRequestPressed,
          ),
        ],
      ),
    );
  }

  Widget _buildBalanceCard(String value) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(AppRadius.lg),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('출금 가능 잔고', style: AppTextStyles.body2),
          const SizedBox(height: AppSpacing.sm),
          Text(value, style: AppTextStyles.priceDisplay),
        ],
      ),
    );
  }

  Future<void> _onRequestPressed() async {
    final amount = int.tryParse(_amountController.text.replaceAll(',', ''));
    if (amount == null || amount < 1000) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('최소 1,000원 이상 입력해주세요.')));
      return;
    }

    await ref
        .read(withdrawalRequestViewModelProvider.notifier)
        .requestWithdrawal(amount);

    if (!mounted) {
      return;
    }

    final updatedState = ref.read(withdrawalRequestViewModelProvider);
    if (updatedState.isSuccess) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('출금 요청이 완료되었습니다.')));
      Navigator.of(context).pop();
      return;
    }

    if (updatedState.errorMessage != null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(updatedState.errorMessage!)));
    }
  }
}
