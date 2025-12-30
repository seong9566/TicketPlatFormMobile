import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_ui_model.dart';

class TicketingFilterBar extends StatelessWidget {
  final List<TicketGradeInfo> grades;
  final TicketGradeInfo? selectedGrade;
  final Function(TicketGradeInfo) onGradeSelected;

  const TicketingFilterBar({
    super.key,
    required this.grades,
    required this.selectedGrade,
    required this.onGradeSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
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
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.tune, size: 16, color: Colors.white),
          const SizedBox(width: 4),
          Text(
            '필터',
            style: AppTextStyles.body2.copyWith(
              fontSize: 13,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _GradeChip extends StatelessWidget {
  final TicketGradeInfo grade;
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
      padding: const EdgeInsets.only(right: AppSpacing.xs),
      child: ChoiceChip(
        label: Text('${grade.name}${grade.count > 0 ? " ${grade.count}" : ""}'),
        selected: isSelected,
        onSelected: (_) => onSelected(),
        backgroundColor: AppColors.muted,
        selectedColor: AppColors.success.withValues(alpha: 0.1),
        labelStyle: AppTextStyles.body2.copyWith(
          fontSize: 13,
          color: isSelected ? AppColors.success : AppColors.textSecondary,
        ),
        side: BorderSide(
          color: isSelected ? AppColors.success : Colors.transparent,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        showCheckmark: false,
      ),
    );
  }
}
