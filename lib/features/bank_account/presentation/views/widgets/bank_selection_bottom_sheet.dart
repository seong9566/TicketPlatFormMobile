import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ticket_platform_mobile/core/enums/bank_type.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';

class BankSelectionBottomSheet extends StatelessWidget {
  final List<BankType> bankOptions;
  final BankType? selectedBank;
  final ValueChanged<BankType> onBankSelected;

  const BankSelectionBottomSheet({
    super.key,
    required this.bankOptions,
    required this.selectedBank,
    required this.onBankSelected,
  });

  static Future<BankType?> show({
    required BuildContext context,
    required List<BankType> bankOptions,
    required BankType? selectedBank,
  }) {
    return showModalBottomSheet<BankType>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.6,
        minChildSize: 0.4,
        maxChildSize: 0.9,
        builder: (_, controller) => _BottomSheetContent(
          controller: controller,
          bankOptions: bankOptions,
          selectedBank: selectedBank,
          onBankSelected: (bank) {
            Navigator.pop(context, bank);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(); // Not used directly, use show() instead
  }
}

class _BottomSheetContent extends StatelessWidget {
  final ScrollController controller;
  final List<BankType> bankOptions;
  final BankType? selectedBank;
  final ValueChanged<BankType> onBankSelected;

  const _BottomSheetContent({
    required this.controller,
    required this.bankOptions,
    required this.selectedBank,
    required this.onBankSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.vertical(top: Radius.circular(AppRadius.xl)),
      ),
      child: SafeArea(
        bottom: true,
        child: Column(
          children: [
            const SizedBox(height: AppSpacing.sm),
            // Handle
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: AppColors.border,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('은행 선택', style: AppTextStyles.heading3),
                  IconButton(
                    icon: const Icon(Icons.close),
                    color: AppColors.textSecondary,
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.sm),
            Divider(color: AppColors.border.withValues(alpha: 0.5), height: 1),
            Expanded(
              child: ListView.separated(
                controller: controller,
                padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
                itemCount: bankOptions.length,
                separatorBuilder: (context, index) => Divider(
                  color: AppColors.border.withValues(alpha: 0.3),
                  height: 1,
                  indent: AppSpacing.lg,
                  endIndent: AppSpacing.lg,
                ),
                itemBuilder: (context, index) {
                  final bank = bankOptions[index];
                  final isSelected = selectedBank == bank;

                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.lg,
                      vertical: AppSpacing.xs,
                    ),
                    leading: SvgPicture.asset(
                      bank.iconPath,
                      width: 24,
                      height: 24,
                    ),
                    title: Text(
                      bank.bankName,
                      style: AppTextStyles.body1.copyWith(
                        color: isSelected
                            ? AppColors.primary
                            : AppColors.textPrimary,
                        fontWeight: isSelected
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    trailing: isSelected
                        ? const Icon(Icons.check, color: AppColors.primary)
                        : null,
                    onTap: () => onBankSelected(bank),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
