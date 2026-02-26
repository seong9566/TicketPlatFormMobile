import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/enums/bank_type.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';
import 'package:ticket_platform_mobile/features/bank_account/domain/entities/bank_account_entity.dart';
import 'package:ticket_platform_mobile/features/bank_account/presentation/viewmodels/bank_account_viewmodel.dart';
import 'package:ticket_platform_mobile/features/withdrawal/presentation/viewmodels/balance_viewmodel.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_button.dart';

class BankAccountDetailView extends ConsumerStatefulWidget {
  const BankAccountDetailView({super.key});

  @override
  ConsumerState<BankAccountDetailView> createState() =>
      _BankAccountDetailViewState();
}

class _BankAccountDetailViewState extends ConsumerState<BankAccountDetailView> {
  bool _showFullAccountNumber = false;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(bankAccountViewModelProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('내 정산 계좌')),
      body: state.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text(error.toString())),
        data: (data) {
          final account = data.bankAccount;
          if (account == null) {
            return _buildEmptyState(context);
          }
          return _buildAccountDetail(context, account, data.isSubmitting);
        },
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  color: AppColors.primaryLight,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.account_balance_outlined,
                  size: 40,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              Text('등록된 계좌가 없습니다', style: AppTextStyles.heading3),
              const SizedBox(height: AppSpacing.sm),
              Text(
                '정산을 위해 계좌를 등록해주세요.',
                style: AppTextStyles.body2.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: AppSpacing.xl),
              AppButton(
                text: '계좌 등록하기',
                width: 200,
                onPressed: () =>
                    context.goNamed(AppRouterPath.bankAccountRegister.name),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAccountDetail(
    BuildContext context,
    BankAccountEntity account,
    bool isSubmitting,
  ) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildAccountCard(account),
                  const SizedBox(height: AppSpacing.lg),
                  _buildBalanceNavigationCard(context),
                ],
              ),
            ),
          ),
          _buildBottomActions(context, isSubmitting),
        ],
      ),
    );
  }

  Widget _buildAccountCard(BankAccountEntity account) {
    final bankType = BankType.fromCode(account.bankCode);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(AppRadius.lg),
        border: Border.all(color: AppColors.border),
        boxShadow: [
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
              _buildBankAvatar(account, bankType),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      account.bankName,
                      style: AppTextStyles.body1.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            _showFullAccountNumber
                                ? account.accountNumber
                                : _maskDisplay(account.accountNumber),
                            style: AppTextStyles.body2.copyWith(
                              color: AppColors.textSecondary,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => setState(() {
                            _showFullAccountNumber = !_showFullAccountNumber;
                          }),
                          child: Padding(
                            padding: const EdgeInsets.only(left: AppSpacing.xs),
                            child: Icon(
                              _showFullAccountNumber
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              size: 18,
                              color: AppColors.textTertiary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          Divider(color: AppColors.border.withValues(alpha: 0.5), height: 1),
          const SizedBox(height: AppSpacing.md),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '예금주',
                style: AppTextStyles.caption.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              Text(
                account.accountHolder,
                style: AppTextStyles.body2.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBalanceNavigationCard(BuildContext context) {
    final balanceAsync = ref.watch(balanceViewModelProvider);

    final availableText = balanceAsync.when(
      loading: () => '-',
      error: (_, _) => '-',
      data: (balance) => NumberFormatUtil.formatPrice(balance.available),
    );

    final pendingText = balanceAsync.when(
      loading: () => '정산 대기 금액을 불러오는 중입니다.',
      error: (_, _) => '잔고를 불러오지 못했습니다.',
      data: (balance) =>
          '정산 대기 ${NumberFormatUtil.formatPrice(balance.pending)}',
    );

    return GestureDetector(
      onTap: () => context.goNamed(AppRouterPath.balanceOverview.name),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(AppSpacing.lg),
        decoration: BoxDecoration(
          color: AppColors.primaryLight,
          borderRadius: BorderRadius.circular(AppRadius.lg),
          border: Border.all(color: AppColors.border),
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: AppColors.primary.withValues(alpha: 0.14),
                borderRadius: BorderRadius.circular(AppRadius.md),
              ),
              child: const Icon(
                Icons.account_balance_wallet_outlined,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          '출금 가능 금액',
                          style: AppTextStyles.body1.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => context.pushNamed(
                          AppRouterPath.withdrawalRequest.name,
                        ),
                        child: Text(
                          '출금하기',
                          style: AppTextStyles.caption.copyWith(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  Text(
                    availableText,
                    style: AppTextStyles.heading3.copyWith(
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    pendingText,
                    style: AppTextStyles.caption.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                  if (balanceAsync.hasError)
                    GestureDetector(
                      onTap: () =>
                          ref.read(balanceViewModelProvider.notifier).refresh(),
                      child: Padding(
                        padding: const EdgeInsets.only(top: AppSpacing.xs),
                        child: Text(
                          '다시 시도',
                          style: AppTextStyles.caption.copyWith(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const Icon(Icons.chevron_right, color: AppColors.textSecondary),
          ],
        ),
      ),
    );
  }

  Widget _buildBankAvatar(BankAccountEntity account, BankType? bankType) {
    if (bankType != null) {
      return Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadius.md),
        ),
        child: SvgPicture.asset(bankType.iconPath, width: 28, height: 28),
      );
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: AppColors.primaryLight,
        borderRadius: BorderRadius.circular(AppRadius.md),
      ),
      alignment: Alignment.center,
      child: Text(
        account.bankName.length >= 2
            ? account.bankName.substring(0, 2)
            : account.bankName,
        style: AppTextStyles.body1.copyWith(
          color: AppColors.primary,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  String _maskDisplay(String accountNumber) {
    if (accountNumber.length <= 4) return accountNumber;
    final visible = accountNumber.substring(accountNumber.length - 4);
    return '${'*' * (accountNumber.length - 4)}$visible';
  }

  Widget _buildBottomActions(BuildContext context, bool isSubmitting) {
    return Container(
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
      child: SizedBox(
        width: double.infinity,
        height: 48,
        child: OutlinedButton(
          onPressed: isSubmitting ? null : () => _showChangeDialog(context),
          style: OutlinedButton.styleFrom(
            foregroundColor: AppColors.textSecondary,
            side: const BorderSide(color: AppColors.border),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppRadius.md),
            ),
          ),
          child: isSubmitting
              ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : Text(
                  '계좌 변경',
                  style: AppTextStyles.body2.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
        ),
      ),
    );
  }

  Future<void> _showChangeDialog(BuildContext context) async {
    final nav = GoRouter.of(context);
    final notifier = ref.read(bankAccountViewModelProvider.notifier);

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.lg),
        ),
        title: Text('계좌 변경', style: AppTextStyles.heading3),
        content: Text(
          '기존 계좌 정보가 삭제되고\n새 계좌를 등록합니다.',
          style: AppTextStyles.body2.copyWith(
            color: AppColors.textSecondary,
            height: 1.5,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: Text(
              '취소',
              style: AppTextStyles.body2.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(
              '변경하기',
              style: AppTextStyles.body2.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );

    if (confirmed == true && mounted) {
      await notifier.changeAccount();
      if (mounted) {
        nav.goNamed(AppRouterPath.bankAccountRegister.name);
      }
    }
  }
}
