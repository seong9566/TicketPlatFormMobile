import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_platform_mobile/features/category/domain/entities/category_type.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';

import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

class CategoryChipList extends ConsumerWidget {
  final String selectedCategory;

  const CategoryChipList({super.key, required this.selectedCategory});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: CategoryType.values.map((type) {
          final isSelected = type.nameKo == selectedCategory;
          return Padding(
            padding: const EdgeInsets.only(right: AppSpacing.sm),
            child: GestureDetector(
              onTap: () {
                // In a real implementation this would invoke a method on the ViewModel
                // ref.read(categoryViewModelProvider(id).notifier).selectCategory(type.nameKo);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.md,
                  vertical: AppSpacing.sm,
                ),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.primary : AppColors.muted,
                  borderRadius: BorderRadius.circular(
                    20,
                  ), // Should this be AppRadius? 20 is typically 'xl' or specific for chips (stadium)
                ),
                child: Row(
                  children: [
                    if (isSelected)
                      const Icon(
                        Icons.check,
                        color: AppColors.primaryForeground,
                        size: 16,
                      )
                    else
                      Icon(
                        _getCategoryIcon(type),
                        size: 16,
                        color: AppColors.textSecondary,
                      ),
                    const SizedBox(width: 4),
                    Text(
                      type.nameKo,
                      style: AppTextStyles.body2.copyWith(
                        color: isSelected
                            ? AppColors.primaryForeground
                            : AppColors.textSecondary,
                        fontWeight: isSelected
                            ? FontWeight.bold
                            : FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  IconData _getCategoryIcon(CategoryType type) {
    switch (type) {
      case CategoryType.concert:
        return Icons.music_note;
      case CategoryType.musical:
        return Icons.theater_comedy;
      case CategoryType.sports:
        return Icons.sports_basketball;
      case CategoryType.exhibition:
        return Icons.event;
      case CategoryType.classic:
        return Icons.piano;
      case CategoryType.etc:
        return Icons.more_horiz;
    }
  }
}
