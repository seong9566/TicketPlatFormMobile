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
import 'package:ticket_platform_mobile/features/bank_account/presentation/views/widgets/bank_selection_bottom_sheet.dart';
import 'package:ticket_platform_mobile/core/enums/bank_type.dart';

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('정산 계좌를 등록해주세요', style: AppTextStyles.heading3),
            const SizedBox(height: AppSpacing.sm),
            Text(
              '계좌 인증 완료 후 정산이 진행됩니다.',
              style: AppTextStyles.body2.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: AppSpacing.xl),
            Text('은행 선택', style: AppTextStyles.body2),
            const SizedBox(height: AppSpacing.xs),
            GestureDetector(
              onTap: _showBankSelectionBottomSheet,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.md,
                  vertical: AppSpacing.md,
                ),
                decoration: BoxDecoration(
                  color: AppColors.inputBackground,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _selectedBank != null
                          ? _selectedBank!.bankName
                          : '은행을 선택하세요',
                      style: AppTextStyles.body1.copyWith(
                        color: _selectedBank != null
                            ? AppColors.textPrimary
                            : AppColors.textSecondary,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColors.textSecondary,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            AppTextField(
              label: '계좌번호',
              hintText: '숫자만 입력',
              controller: _accountNumberController,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            const SizedBox(height: AppSpacing.md),
            AppTextField(
              label: '예금주',
              hintText: '예금주명을 입력하세요',
              controller: _accountHolderController,
            ),
            if (state?.error != null) ...[
              const SizedBox(height: AppSpacing.md),
              Text(
                state!.error!,
                style: AppTextStyles.caption.copyWith(color: AppColors.error),
              ),
            ],
            const SizedBox(height: AppSpacing.xl),
            AppButton(
              text: '등록하고 인증하기',
              isLoading: isSubmitting,
              onPressed: isSubmitting ? null : _submit,
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
    final bankName = _selectedBank?.bankName ?? '';
    final bankCode = _selectedBank?.code ?? '';
    final accountNumber = _accountNumberController.text.trim();
    final accountHolder = _accountHolderController.text.trim();

    if (bankName.isEmpty ||
        bankCode.isEmpty ||
        accountNumber.length < 8 ||
        accountHolder.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('입력값을 확인해주세요.')));
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
    if (!mounted) {
      return;
    }
    if (state?.bankAccount != null && state?.error == null) {
      context.pushNamed(AppRouterPath.bankAccountVerify.name);
    }
  }
}
