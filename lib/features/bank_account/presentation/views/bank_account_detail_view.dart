import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/enums/bank_type.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/features/bank_account/domain/entities/bank_account_entity.dart';
import 'package:ticket_platform_mobile/features/bank_account/presentation/viewmodels/bank_account_viewmodel.dart';
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
                  // 1) 인증 상태 카드 — 최상단
                  _buildVerificationStatusCard(context, account),
                  const SizedBox(height: AppSpacing.lg),

                  // 2) 계좌 정보 카드
                  _buildAccountCard(account),
                ],
              ),
            ),
          ),

          // 하단 고정 버튼 영역
          _buildBottomActions(context, account, isSubmitting),
        ],
      ),
    );
  }

  // ── 인증 상태 카드 ──────────────────────────────────────────
  Widget _buildVerificationStatusCard(
    BuildContext context,
    BankAccountEntity account,
  ) {
    final isVerified = account.verified;

    return GestureDetector(
      onTap: isVerified
          ? null
          : () => context.goNamed(AppRouterPath.bankAccountVerify.name),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(AppSpacing.lg),
        decoration: BoxDecoration(
          color: isVerified
              ? AppColors.primaryLight.withValues(alpha: 0.5)
              : AppColors.muted,
          borderRadius: BorderRadius.circular(AppRadius.lg),
          border: Border.all(
            color: isVerified
                ? AppColors.primary.withValues(alpha: 0.2)
                : AppColors.border,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: isVerified
                    ? AppColors.primary.withValues(alpha: 0.1)
                    : AppColors.warning.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                isVerified
                    ? Icons.verified_outlined
                    : Icons.warning_amber_rounded,
                color: isVerified ? AppColors.primary : AppColors.warning,
                size: 22,
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    isVerified ? '인증 완료' : '인증 필요',
                    style: AppTextStyles.body1.copyWith(
                      fontWeight: FontWeight.w600,
                      color: isVerified ? AppColors.primary : AppColors.warning,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    isVerified
                        ? _formatVerifiedDate(account.verifiedAt)
                        : '계좌 인증을 완료해야 정산이 진행됩니다.',
                    style: AppTextStyles.caption.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            if (!isVerified)
              const Icon(
                Icons.chevron_right,
                color: AppColors.textSecondary,
                size: 20,
              ),
          ],
        ),
      ),
    );
  }

  // ── 계좌 정보 카드 (은행 아이콘 + 계좌번호 토글) ──────────
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
          // 은행 정보 헤더
          Row(
            children: [
              // 은행 아이콘 (SVG) or fallback 텍스트 아바타
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
                    // 계좌번호 + 보기/숨기기 토글
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

          // 예금주
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

  /// 은행 아이콘 위젯 — BankType 매칭 시 SVG, 실패 시 텍스트 fallback
  Widget _buildBankAvatar(BankAccountEntity account, BankType? bankType) {
    if (bankType != null) {
      return Container(
        width: 48,
        height: 48,
        // padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          // color: AppColors.gray50,
          borderRadius: BorderRadius.circular(AppRadius.md),
        ),
        child: SvgPicture.asset(bankType.iconPath, width: 28, height: 28),
      );
    }

    // fallback: 은행명 앞 2글자
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

  /// 계좌번호 마스킹 표시 — 백엔드가 이미 마스킹 처리한 경우 그대로 표시,
  /// 숫자만 있는 경우 뒤 4자리만 노출
  String _maskDisplay(String accountNumber) {
    if (accountNumber.contains('*')) return accountNumber;
    if (accountNumber.length <= 4) return accountNumber;
    final visible = accountNumber.substring(accountNumber.length - 4);
    return '${'*' * (accountNumber.length - 4)}$visible';
  }

  // ── 하단 버튼 ──────────────────────────────────────────────
  Widget _buildBottomActions(
    BuildContext context,
    BankAccountEntity account,
    bool isSubmitting,
  ) {
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 인증 진행 버튼 (미인증 시)
          if (!account.verified) ...[
            AppButton(
              text: '계좌 인증 진행',
              onPressed: () =>
                  context.goNamed(AppRouterPath.bankAccountVerify.name),
            ),
            const SizedBox(height: AppSpacing.sm),
          ],

          // 계좌 변경 버튼
          SizedBox(
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
        ],
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

  String _formatVerifiedDate(DateTime? verifiedAt) {
    if (verifiedAt == null) return '인증 완료';
    final local = verifiedAt.toLocal();
    return '${local.year}.${local.month.toString().padLeft(2, '0')}.${local.day.toString().padLeft(2, '0')} 인증됨';
  }
}
