import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_info_ui_model.dart';

class TicketingFilterBar extends StatelessWidget {
  final List<TicketingGradeUiModel> grades;
  final TicketingInfoUiModel? ticketingInfo;
  final TicketingGradeUiModel? selectedGrade;
  final Function(TicketingGradeUiModel) onGradeSelected;
  final Function(String) onSortSelected;

  const TicketingFilterBar({
    super.key,
    required this.grades,
    required this.ticketingInfo,
    required this.selectedGrade,
    required this.onGradeSelected,
    required this.onSortSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      height: 54.0,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      child: Row(
        children: [
          const _FilterIconButton(),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: grades.map((grade) {
                  final isSelected = selectedGrade?.id == grade.id;
                  return _GradeChip(
                    grade: grade,
                    isSelected: isSelected,
                    onSelected: () => onGradeSelected(grade),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FilterIconButton extends StatelessWidget {
  const _FilterIconButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.secondary, // 검은색 배경
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        '필터',
        style: AppTextStyles.body2.copyWith(
          fontSize: 14,
          color: AppColors.secondaryForeground,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _GradeChip extends StatelessWidget {
  final TicketingGradeUiModel grade;
  final bool isSelected;
  final VoidCallback onSelected;

  const _GradeChip({
    required this.grade,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: GestureDetector(
        onTap: onSelected,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: isSelected
                ? AppColors
                      .success // 초록색 (선택됨)
                : AppColors.background, // 흰색 (비선택)
            borderRadius: BorderRadius.circular(20),
            border: isSelected
                ? null
                : Border.all(color: AppColors.border, width: 1),
          ),
          child: Text(
            grade.name,
            style: AppTextStyles.body2.copyWith(
              fontSize: 14,
              color: isSelected
                  ? AppColors.primaryForeground
                  : AppColors.textPrimary,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
