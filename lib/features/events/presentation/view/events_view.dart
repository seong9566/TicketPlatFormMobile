import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
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
        // title: stateAsync.when(
        //   data: (state) => Text(
        //     '${state.selectedCategory.label} 공연 리스트',
        //     style: AppTextStyles.heading3,
        //   ),
        //   loading: () => const Text('공연 리스트', style: AppTextStyles.heading3),
        //   error: (_, __) => const Text('오류 발생', style: AppTextStyles.heading3),
        // ),
        // centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            EventSearchBar(initialCategory: category),
            const SizedBox(height: AppSpacing.md),
            EventCategoryBar(initialCategory: category),
            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 600),
                switchInCurve: Curves.easeOutQuart,
                switchOutCurve: Curves.easeInQuart,
                layoutBuilder:
                    (Widget? currentChild, List<Widget> previousChildren) {
                      return Stack(
                        children: <Widget>[
                          ...previousChildren,
                          if (currentChild != null) currentChild,
                        ],
                      );
                    },
                transitionBuilder: (Widget child, Animation<double> animation) {
                  final isEntering =
                      child.key ==
                      stateAsync.maybeWhen(
                        data: (state) => ValueKey(state.selectedCategory),
                        loading: () => const ValueKey('loading'),
                        orElse: () => null,
                      );

                  if (isEntering) {
                    return FadeTransition(
                      opacity: CurvedAnimation(
                        parent: animation,
                        curve: const Interval(0.0, 1.0, curve: Curves.easeOut),
                      ),
                      child: SlideTransition(
                        position:
                            Tween<Offset>(
                              begin: const Offset(0, 0.05),
                              end: Offset.zero,
                            ).animate(
                              CurvedAnimation(
                                parent: animation,
                                curve: Curves.easeOutBack,
                              ),
                            ),
                        child: child,
                      ),
                    );
                  } else {
                    return FadeTransition(
                      opacity: CurvedAnimation(
                        parent: animation,
                        curve: const Interval(0.0, 0.4, curve: Curves.easeIn),
                      ),
                      child: child,
                    );
                  }
                },
                child: stateAsync.maybeWhen(
                  data: (state) {
                    final events = viewModel.getFilteredEvents(state);
                    if (events.isEmpty && !state.isLoading) {
                      return Center(
                        key: const ValueKey('empty'),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search_off_outlined,
                              size: 48,
                              color: AppColors.textTertiary,
                            ),
                            const SizedBox(height: AppSpacing.md),
                            const Text(
                              '검색 결과가 없습니다.',
                              style: AppTextStyles.body1,
                            ),
                          ],
                        ),
                      );
                    }
                    return AnimationLimiter(
                      key: ValueKey(state.selectedCategory),
                      child: ListView.separated(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.md,
                          vertical: AppSpacing.md,
                        ),
                        itemCount: events.length,
                        separatorBuilder: (context, index) =>
                            const Divider(height: 32, color: AppColors.muted),
                        itemBuilder: (context, index) {
                          return AnimationConfiguration.staggeredList(
                            position: index,
                            duration: const Duration(milliseconds: 400),
                            child: SlideAnimation(
                              verticalOffset: 40.0,
                              curve: Curves.easeOutQuart,
                              child: FadeInAnimation(
                                child: EventCard(event: events[index]),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                  loading: () => const Center(
                    key: ValueKey('loading'),
                    child: CircularProgressIndicator(
                      color: AppColors.primary,
                      strokeWidth: 3,
                    ),
                  ),
                  orElse: () => const SizedBox.shrink(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
