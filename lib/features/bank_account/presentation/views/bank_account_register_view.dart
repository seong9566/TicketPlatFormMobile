import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/enums/bank_type.dart';
import 'package:ticket_platform_mobile/features/bank_account/presentation/viewmodels/bank_account_viewmodel.dart';
import 'package:ticket_platform_mobile/features/bank_account/presentation/views/widgets/bank_selection_bottom_sheet.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_button.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_text_field.dart';

class BankAccountRegisterView extends ConsumerStatefulWidget {
  const BankAccountRegisterView({super.key});

  @override
  ConsumerState<BankAccountRegisterView> createState() =>
      _BankAccountRegisterViewState();
}

class _BankAccountRegisterViewState
    extends ConsumerState<BankAccountRegisterView> {
  BankType? _selectedBank;
  final _accountNumberController = TextEditingController();
  final _accountHolderController = TextEditingController();
  bool _hasAttemptedSubmit = false;

  @override
  void dispose() {
    _accountNumberController.dispose();
    _accountHolderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(bankAccountViewModelProvider).value;
    final isSubmitting = state?.isSubmitting ?? false;

    return Scaffold(
      appBar: AppBar(title: const Text('계좌 등록')),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 헤더
                    Text('정산 계좌 등록', style: AppTextStyles.heading2),
                    const SizedBox(height: AppSpacing.sm),
                    Text(
                      '정산을 위해 본인 명의 계좌를 등록해주세요.',
                      style: AppTextStyles.body2.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.xl),

                    // 은행 선택
                    Text(
                      '은행 선택',
                      style: AppTextStyles.body2.copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    _buildBankSelector(),
                    if (_hasAttemptedSubmit && _selectedBank == null) ...[
                      const SizedBox(height: AppSpacing.xs),
                      Text(
                        '은행을 선택해주세요.',
                        style: AppTextStyles.caption.copyWith(
                          color: AppColors.destructive,
                        ),
                      ),
                    ],
                    const SizedBox(height: AppSpacing.lg),

                    // 계좌번호
                    AppTextField(
                      label: '계좌번호',
                      hintText: '계좌번호 입력 (숫자만)',
                      controller: _accountNumberController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                    if (_hasAttemptedSubmit &&
                        _accountNumberController.text.trim().length < 8) ...[
                      const SizedBox(height: AppSpacing.xs),
                      Text(
                        '계좌번호를 8자리 이상 입력해주세요.',
                        style: AppTextStyles.caption.copyWith(
                          color: AppColors.destructive,
                        ),
                      ),
                    ],
                    const SizedBox(height: AppSpacing.lg),

                    // 예금주
                    AppTextField(
                      label: '예금주',
                      hintText: '예금주명을 입력하세요',
                      controller: _accountHolderController,
                    ),
                    if (_hasAttemptedSubmit &&
                        _accountHolderController.text.trim().isEmpty) ...[
                      const SizedBox(height: AppSpacing.xs),
                      Text(
                        '예금주명을 입력해주세요.',
                        style: AppTextStyles.caption.copyWith(
                          color: AppColors.destructive,
                        ),
                      ),
                    ],

                    // 에러 메시지
                    if (state?.error != null) ...[
                      const SizedBox(height: AppSpacing.lg),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(AppSpacing.md),
                        decoration: BoxDecoration(
                          color: AppColors.destructive.withValues(alpha: 0.06),
                          borderRadius: BorderRadius.circular(AppRadius.sm),
                          border: Border.all(
                            color: AppColors.destructive.withValues(
                              alpha: 0.15,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.error_outline,
                              size: 18,
                              color: AppColors.destructive,
                            ),
                            const SizedBox(width: AppSpacing.sm),
                            Expanded(
                              child: Text(
                                state!.error!,
                                style: AppTextStyles.caption.copyWith(
                                  color: AppColors.destructive,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],

                    // 안내 문구
                    const SizedBox(height: AppSpacing.xl),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(AppSpacing.md),
                      decoration: BoxDecoration(
                        color: AppColors.muted,
                        borderRadius: BorderRadius.circular(AppRadius.sm),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.info_outline,
                                size: 16,
                                color: AppColors.textTertiary,
                              ),
                              const SizedBox(width: AppSpacing.xs),
                              Text(
                                '안내사항',
                                style: AppTextStyles.caption.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: AppSpacing.sm),
                          Text(
                            '• 본인 명의의 계좌만 등록 가능합니다.\n• 계좌번호와 예금주명이 일치해야 합니다.',
                            style: AppTextStyles.caption.copyWith(
                              color: AppColors.textTertiary,
                              height: 1.6,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // 하단 버튼
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
                  top: BorderSide(
                    color: AppColors.border.withValues(alpha: 0.5),
                  ),
                ),
              ),
              child: AppButton(
                text: '계좌 등록',
                isLoading: isSubmitting,
                onPressed: isSubmitting ? null : _submit,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBankSelector() {
    final isError = _hasAttemptedSubmit && _selectedBank == null;

    return GestureDetector(
      onTap: _showBankSelectionBottomSheet,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: 14,
        ),
        decoration: BoxDecoration(
          color: AppColors.inputBackground,
          borderRadius: BorderRadius.circular(AppRadius.md),
          border: Border.all(
            color: isError
                ? AppColors.destructive.withValues(alpha: 0.5)
                : _selectedBank != null
                ? AppColors.primary.withValues(alpha: 0.3)
                : Colors.transparent,
          ),
        ),
        child: Row(
          children: [
            // 은행 아이콘
            if (_selectedBank != null) ...[
              ClipRRect(
                borderRadius: BorderRadius.circular(AppRadius.xs),
                child: SvgPicture.asset(
                  _selectedBank!.iconPath,
                  width: 24,
                  height: 24,
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
            ] else ...[
              Icon(
                Icons.account_balance_outlined,
                size: 22,
                color: AppColors.textTertiary,
              ),
              const SizedBox(width: AppSpacing.sm),
            ],

            // 은행명
            Expanded(
              child: Text(
                _selectedBank != null ? _selectedBank!.bankName : '은행을 선택하세요',
                style: AppTextStyles.body1.copyWith(
                  color: _selectedBank != null
                      ? AppColors.textPrimary
                      : AppColors.textTertiary,
                ),
              ),
            ),

            // 화살표
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: AppColors.textSecondary,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showBankSelectionBottomSheet() async {
    final result = await BankSelectionBottomSheet.show(
      context: context,
      bankOptions: BankType.values,
      selectedBank: _selectedBank,
    );

    if (result != null) {
      setState(() {
        _selectedBank = result;
      });
    }
  }

  Future<void> _submit() async {
    setState(() {
      _hasAttemptedSubmit = true;
    });

    final bankName = _selectedBank?.bankName ?? '';
    final bankCode = _selectedBank?.code ?? '';
    final accountNumber = _accountNumberController.text.trim();
    final accountHolder = _accountHolderController.text.trim();

    if (bankName.isEmpty ||
        bankCode.isEmpty ||
        accountNumber.length < 8 ||
        accountHolder.isEmpty) {
      return;
    }

    await ref
        .read(bankAccountViewModelProvider.notifier)
        .register(
          bankName: bankName,
          bankCode: bankCode,
          accountNumber: accountNumber,
          accountHolder: accountHolder,
        );

    final state = ref.read(bankAccountViewModelProvider).value;
    if (!mounted) return;
    if (state?.bankAccount != null && state?.error == null) {
      context.goNamed(AppRouterPath.bankAccountDetail.name);
    }
  }
}
