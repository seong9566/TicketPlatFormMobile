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
      {
        'val': Category.concert,
        'icon': Icons.music_note_outlined,
        'label': '콘서트',
      },
      {
        'val': Category.sports,
        'icon': Icons.emoji_events_outlined,
        'label': '스포츠',
      },
      {
        'val': Category.musical,
        'icon': Icons.theater_comedy_outlined,
        'label': '뮤지컬/연극',
      },
    ];

    return Container(
      height: 46, // 아이콘 + 텍스트 + 패딩에 맞는 고정 높이
      margin: const EdgeInsets.only(bottom: AppSpacing.sm),
      child: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final cat = categories[index];
          final value = cat['val'] as Category;
          final icon = cat['icon'] as IconData;
          final label = cat['label'] as String;
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
              
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: isSelected ? const Color(0xFF22C55E) : AppColors.inputBackground,
                borderRadius: BorderRadius.circular(20),
                
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    icon,
                    size: 16,
                    color: isSelected ? Colors.white : const Color(0xFF64748B),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    label,
                    style: TextStyle(
                      color: isSelected
                          ? Colors.white
                          : const Color(0xFF64748B),
                      fontSize: 14,
                      fontWeight: isSelected
                          ? FontWeight.w600
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
