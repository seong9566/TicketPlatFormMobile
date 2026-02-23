import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_info_ui_model.dart';

import 'package:ticket_platform_mobile/features/ticketing/presentation/view/widgets/ticketing_list_header.dart';

class TicketingFilterBar extends StatelessWidget {
  final List<TicketingGradeUiModel> grades;
  final TicketingInfoUiModel? ticketingInfo;
  final TicketingGradeUiModel? selectedGrade;
  final Function(TicketingGradeUiModel) onGradeSelected;
  final int totalCount;
  final String sortBy;
  final VoidCallback onSortTap;

  const TicketingFilterBar({
    super.key,
    required this.grades,
    required this.ticketingInfo,
    required this.selectedGrade,
    required this.onGradeSelected,
    required this.totalCount,
    required this.sortBy,
    required this.onSortTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Row 1: 등급 필터
          SizedBox(
            height: 44.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.md,
                vertical: AppSpacing.xs,
              ),
              itemCount: grades.length,
              itemBuilder: (context, index) {
                final grade = grades[index];
                final isSelected = selectedGrade?.id == grade.id;
                return _GradeChip(
                  grade: grade,
                  isSelected: isSelected,
                  onSelected: () => onGradeSelected(grade),
                );
              },
            ),
          ),
          // Row 2: 갯수 및 정렬 (TicketingListHeader 활용)
          TicketingListHeader(
            count: totalCount,
            sortBy: sortBy,
            onSortTap: onSortTap,
          ),
        ],
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
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.primary : AppColors.background,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: isSelected ? AppColors.primary : AppColors.border,
              width: 1,
            ),
            boxShadow: isSelected
                ? [
                    BoxShadow(
                      color: AppColors.primary.withValues(alpha: 0.2),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ]
                : null,
          ),
          child: Text(
            grade.name,
            style: AppTextStyles.body2.copyWith(
              fontSize: 14,
              color: isSelected ? Colors.white : AppColors.textPrimary,
              fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
