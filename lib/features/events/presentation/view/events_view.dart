import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/events/presentation/viewmodels/events_viewmodel.dart';
import 'package:ticket_platform_mobile/features/events/presentation/widgets/event_card.dart';
import 'package:ticket_platform_mobile/features/events/presentation/widgets/event_category_bar.dart';
import 'package:ticket_platform_mobile/features/events/presentation/widgets/event_search_bar.dart';

class EventsView extends ConsumerWidget {
  final String? category;
  const EventsView({super.key, this.category});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateAsync = ref.watch(
      eventsViewModelProvider(initialCategory: category),
    );
    final viewModel = ref.read(
      eventsViewModelProvider(initialCategory: category).notifier,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 18,
            color: AppColors.textSecondary,
          ),
          onPressed: () => context.pop(),
        ),
        title: stateAsync.when(
          data: (state) => Text(
            '${state.selectedCategory.label} 공연 리스트',
            style: AppTextStyles.heading3,
          ),
          loading: () => const Text('공연 리스트', style: AppTextStyles.heading3),
          error: (_, __) => const Text('오류 발생', style: AppTextStyles.heading3),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            EventSearchBar(initialCategory: category),
            EventCategoryBar(initialCategory: category),
            Expanded(
              child: stateAsync.when(
                data: (state) {
                  final events = viewModel.getFilteredEvents(state);
                  if (events.isEmpty) {
                    return const Center(child: Text('검색 결과가 없습니다.'));
                  }
                  return ListView.separated(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.lg,
                      vertical: AppSpacing.md,
                    ),
                    itemCount: events.length,
                    separatorBuilder: (context, index) =>
                        const Divider(height: 32, color: AppColors.muted),
                    itemBuilder: (context, index) {
                      return EventCard(event: events[index]);
                    },
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (err, _) => Center(child: Text('Error: $err')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
