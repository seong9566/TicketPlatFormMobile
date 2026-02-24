import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

class SalesStatusFilterBar extends StatelessWidget {
  final String? selectedStatus;
  final ValueChanged<String?> onFilterChanged;

  const SalesStatusFilterBar({
    this.selectedStatus,
    required this.onFilterChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.background,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildFilterChip(label: '전체', value: null),
            const SizedBox(width: AppSpacing.sm),
            _buildFilterChip(label: '판매중', value: 'on_sale'),
            const SizedBox(width: AppSpacing.sm),
            _buildFilterChip(label: '완료', value: 'completed'),
            const SizedBox(width: AppSpacing.sm),
            _buildFilterChip(label: '정산 중', value: 'settling'),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterChip({required String label, required String? value}) {
    final isSelected = selectedStatus == value;

    return GestureDetector(
      onTap: () => onFilterChanged(value),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : AppColors.background,
          borderRadius: BorderRadius.circular(AppRadius.xl),
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.border,
            width: 1,
          ),
        ),
        child: Text(
          label,
          style: AppTextStyles.caption.copyWith(
            color: isSelected
                ? AppColors.primaryForeground
                : AppColors.textSecondary,
            fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
