import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_platform_mobile/core/enums/category.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/home/presentation/viewmodels/home_viewmodel.dart';
import 'package:ticket_platform_mobile/features/home/presentation/widgets/home_banner_carousel.dart';
import 'package:ticket_platform_mobile/features/home/presentation/widgets/home_bottom_nav.dart';
import 'package:ticket_platform_mobile/features/home/presentation/widgets/home_event_row.dart';
import 'package:ticket_platform_mobile/features/home/presentation/widgets/home_common_widgets.dart';
import 'package:ticket_platform_mobile/features/home/presentation/widgets/popular_ticket_list.dart';
import 'package:ticket_platform_mobile/features/home/presentation/widgets/recommended_ticket_list.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  final _bannerController = PageController();

  final _banners = const [
    'Summer Rock Festival',
    'Jazz Night Downtown',
    'Indie Music Parade',
  ];

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

  int _currentBanner = 0;

  @override
  void dispose() {
    _bannerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final homeState = ref.watch(homeViewModelProvider);

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
                const SizedBox(height: AppSpacing.md),
                const HomeSearchBar(),
                const SizedBox(height: AppSpacing.md),
                HomeBannerCarousel(
                  controller: _bannerController,
                  banners: _banners,
                  onPageChanged: (index) =>
                      setState(() => _currentBanner = index),
                  currentIndex: _currentBanner,
                ),
                const SizedBox(height: AppSpacing.lg),
                HomeEventRow(events: _events),
                const SizedBox(height: AppSpacing.lg),
                homeState.when(
                  data: (data) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HomeSectionHeader(
                        title: '🔥 현재 인기 공연',
                        trailing: GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              Text(
                                '더보기',
                                style: AppTextStyles.body2.copyWith(
                                  color: const Color(0xFF94A3B8),
                                ),
                              ),
                              const Icon(
                                Icons.chevron_right,
                                color: Color(0xFF94A3B8),
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: AppSpacing.md),
                      PopularTicketList(tickets: data.popularTickets),
                      const SizedBox(height: AppSpacing.xl),
                      HomeSectionHeader(
                        title: '✨ Just for you',
                        trailing: GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              Text(
                                '더보기',
                                style: AppTextStyles.body2.copyWith(
                                  color: const Color(0xFF94A3B8),
                                ),
                              ),
                              const Icon(
                                Icons.chevron_right,
                                color: Color(0xFF94A3B8),
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: AppSpacing.md),
                      RecommendedTicketList(tickets: data.recommendedEvents),
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
        onPressed: () {},
        backgroundColor: const Color(0xFF22C55E),
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: const Icon(Icons.add, color: Colors.white, size: 36),
      ),
    );
  }
}
