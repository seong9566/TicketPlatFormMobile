import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/enums/category.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/home/presentation/viewmodels/home_viewmodel.dart';
import 'package:ticket_platform_mobile/features/home/presentation/widgets/home_event_row.dart';
import 'package:ticket_platform_mobile/features/home/presentation/widgets/home_common_widgets.dart';
import 'package:ticket_platform_mobile/features/home/presentation/widgets/home_deadline_deal_slider.dart';
import 'package:ticket_platform_mobile/features/home/presentation/widgets/popular_event_list.dart';
import 'package:ticket_platform_mobile/features/home/presentation/widgets/recommended_ticket_list.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/viewmodels/chat_list_viewmodel.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  final _events = const [
    HomeEvent(
      name: '콘서트',
      icon: Icons.music_note_outlined,
      type: Category.concert,
    ),
    HomeEvent(name: '뮤지컬', icon: Icons.theater_comedy, type: Category.musical),
    HomeEvent(
      name: '스포츠',
      icon: Icons.emoji_events_outlined,
      type: Category.sports,
    ),
    HomeEvent(name: '전시', icon: Icons.palette_outlined, type: Category.etc),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeViewModelProvider);
    final homeData = homeState.maybeWhen(
      data: (data) => data,
      orElse: () => null,
    );

    // ChatListViewModel 초기화 → SignalR 연결 보장
    ref.watch(chatListViewModelProvider);

    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () => ref.read(homeViewModelProvider.notifier).refresh(),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSpacing.md),
                const HomeHeader(),
                if (homeData != null && homeData.deadlineDeals.isNotEmpty) ...[
                  const SizedBox(height: AppSpacing.md),
                  const HomeSectionHeader(title: '🔥 마감 임박 핫딜'),
                  const SizedBox(height: AppSpacing.md),
                  HomeDeadlineDealSlider(deals: homeData.deadlineDeals),
                  const SizedBox(height: AppSpacing.lg),
                ],
                HomeEventRow(events: _events),
                const SizedBox(height: AppSpacing.lg),
                homeState.when(
                  data: (data) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HomeSectionHeader(title: '🔥 현재 인기 공연'),
                      const SizedBox(height: AppSpacing.md),
                      PopularEventList(events: data.popularEvents),
                      const SizedBox(height: AppSpacing.xl),
                      HomeSectionHeader(
                        title: '✨ 이런 공연은 어때요?',
                        trailing: GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              Text(
                                '더보기',
                                style: AppTextStyles.body2.copyWith(
                                  color: AppColors.textTertiary,
                                ),
                              ),
                              const Icon(
                                Icons.chevron_right,
                                color: AppColors.textTertiary,
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: AppSpacing.md),
                      RecommendedEventList(events: data.recommendedEvents),
                    ],
                  ),
                  loading: () => const Center(
                    child: Padding(
                      padding: EdgeInsets.all(AppSpacing.xl),
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  error: (error, stack) => Center(
                    child: Padding(
                      padding: const EdgeInsets.all(AppSpacing.xl),
                      child: Column(
                        children: [
                          const Text('데이터를 불러오지 못했습니다.'),
                          TextButton(
                            onPressed: () => ref
                                .read(homeViewModelProvider.notifier)
                                .refresh(),
                            child: const Text('다시 시도'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: AppSpacing.xl),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push(AppRouterPath.sellTicketCategory.path),
        backgroundColor: AppColors.primary,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: const Icon(Icons.add, color: Colors.white, size: 36),
      ),
    );
  }
}
