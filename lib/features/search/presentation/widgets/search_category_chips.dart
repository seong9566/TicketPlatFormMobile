import 'package:flutter/material.dart';

import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

class SearchCategoryChips extends StatelessWidget {
  const SearchCategoryChips({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'label': '전체', 'selected': true},
      {'label': '콘서트', 'selected': false},
      {'label': '뮤지컬', 'selected': false},
      {'label': '스포츠', 'selected': false},
      {'label': '전시/행사', 'selected': false},
    ];

    return SizedBox(
      height: 40,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final cat = categories[index];
          final isSelected = cat['selected'] as bool;
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.lg,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: isSelected ? AppColors.primary : Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color:
                    isSelected ? Colors.transparent : const Color(0xFFE2E8F0),
              ),
            ),
            child: Text(
              cat['label']! as String,
              style: AppTextStyles.body2.copyWith(
                color: isSelected ? Colors.white : AppColors.textSecondary,
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemCount: categories.length,
      ),
    );
  }
}

