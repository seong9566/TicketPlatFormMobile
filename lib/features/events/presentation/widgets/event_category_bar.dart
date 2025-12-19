import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_platform_mobile/core/enums/category.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/features/events/presentation/viewmodels/events_viewmodel.dart';

class EventCategoryBar extends ConsumerWidget {
  final String? initialCategory;
  const EventCategoryBar({super.key, this.initialCategory});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateAsync = ref.watch(
      eventsViewModelProvider(initialCategory: initialCategory),
    );

    final currentCategory = stateAsync.when(
      data: (s) => s.selectedCategory,
      loading: () => Category.concert,
      error: (_, __) => Category.concert,
    );

    final categories = [
      {'val': Category.concert, 'icon': Icons.music_note},
      {'val': Category.sports, 'icon': Icons.sports_baseball},
      {'val': Category.musical, 'icon': Icons.theater_comedy},
      {'val': Category.classic, 'icon': Icons.piano},
    ];

    return SizedBox(
      height: 44,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final cat = categories[index];
          final value = cat['val'] as Category;
          final icon = cat['icon'] as IconData;
          final isSelected = value == currentCategory;

          return GestureDetector(
            onTap: () => ref
                .read(
                  eventsViewModelProvider(
                    initialCategory: initialCategory,
                  ).notifier,
                )
                .changeCategory(value),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
              decoration: BoxDecoration(
                color: isSelected
                    ? AppColors.primary
                    : AppColors.inputBackground,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  color: isSelected ? AppColors.primary : AppColors.border,
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    icon,
                    size: 16,
                    color: isSelected ? Colors.white : AppColors.textSecondary,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    value.label,
                    style: TextStyle(
                      color: isSelected
                          ? Colors.white
                          : AppColors.textSecondary,
                      fontSize: 14,
                      fontWeight: isSelected
                          ? FontWeight.w700
                          : FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
