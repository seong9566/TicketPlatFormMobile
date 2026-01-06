import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/events/presentation/viewmodels/events_viewmodel.dart';

class EventSearchBar extends ConsumerWidget {
  final String? initialCategory;
  const EventSearchBar({super.key, this.initialCategory});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.sm,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.inputBackground,
                borderRadius: BorderRadius.circular(AppRadius.md),
              ),
              child: TextField(
                onChanged: (val) => ref
                    .read(
                      eventsViewModelProvider(
                        initialCategory: initialCategory,
                      ).notifier,
                    )
                    .updateSearchQuery(val),
                decoration: InputDecoration(
                  hintText: '공연명, 아티스트 검색',
                  hintStyle: AppTextStyles.body2.copyWith(
                    color: const Color(0xFF94A3B8),
                    fontSize: 14,
                  ),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 12, right: 8),
                    child: Icon(
                      Icons.search,
                      color: Color(0xFF94A3B8),
                      size: 20,
                    ),
                  ),
                  prefixIconConstraints: const BoxConstraints(minWidth: 40),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(AppRadius.md),
              border: Border.all(color: const Color(0xFFE2E8F0), width: 1),
            ),
            child: const Icon(Icons.tune, color: Color(0xFF64748B), size: 20),
          ),
        ],
      ),
    );
  }
}
