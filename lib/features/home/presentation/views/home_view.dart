import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/features/category/domain/entities/category_type.dart';

import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/home/presentation/widgets/home_banner_carousel.dart';
import 'package:ticket_platform_mobile/features/home/presentation/widgets/home_bottom_nav.dart';
import 'package:ticket_platform_mobile/features/home/presentation/widgets/home_category_wrap.dart';
import 'package:ticket_platform_mobile/features/home/presentation/widgets/home_common_widgets.dart';
import 'package:ticket_platform_mobile/features/home/presentation/widgets/popular_ticket_list.dart';
import 'package:ticket_platform_mobile/features/home/presentation/widgets/recommended_ticket_list.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _bannerController = PageController(viewportFraction: 0.9);

  final _banners = const [
    'Summer Rock Festival',
    'Jazz Night Downtown',
    'Indie Music Parade',
  ];

  final _categories = const [
    HomeCategory(
      name: '콘서트',
      icon: Icons.music_note_outlined,
      type: CategoryType.concert,
    ),
    HomeCategory(
      name: '뮤지컬',
      icon: Icons.theater_comedy_outlined,
      type: CategoryType.musical,
    ),
    HomeCategory(
      name: '스포츠',
      icon: Icons.sports_soccer_outlined,
      type: CategoryType.sports,
    ),
    HomeCategory(
      name: '전시',
      icon: Icons.museum_outlined,
      type: CategoryType.exhibition,
    ),
    HomeCategory(
      name: '클래식',
      icon: Icons.piano_outlined,
      type: CategoryType.classic,
    ),
  ];

  final _popularTickets = const [
    Ticket(title: '싸이흠뻑쇼', subtitle: '8.15 | 잠실종합운동장', price: '154,000원'),
    Ticket(title: '아이유 월드투어', subtitle: '9.21 | 고척스카이돔', price: '198,000원'),
    Ticket(title: '락 페스티벌', subtitle: '10.05 | 난지한강공원', price: '120,000원'),
  ];

  final _recommendedTickets = const [
    Ticket(title: 'K-리그 홈스타전', subtitle: '서울올림픽경기장', price: '티켓 판매중'),
    Ticket(title: '서울 재즈 페스티벌', subtitle: '올림픽공원', price: '12개 티켓'),
    Ticket(title: '뮤지컬 모차르트', subtitle: '세종문화회관', price: '8개 티켓'),
    Ticket(title: '인디 밴드 쇼케이스', subtitle: '홍대 라이브홀', price: '6개 티켓'),
    Ticket(title: '클래식 갈라', subtitle: '예술의전당', price: '4개 티켓'),
  ];

  int _currentBanner = 0;

  @override
  void dispose() {
    _bannerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
              HomeCategoryWrap(categories: _categories),
              const SizedBox(height: AppSpacing.lg),
              HomeSectionHeader(
                title: '인기 티켓',
                trailing: TextButton(
                  onPressed: () {},
                  child: Text(
                    '전체보기',
                    style: AppTextStyles.body1.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              PopularTicketList(tickets: _popularTickets),
              const SizedBox(height: AppSpacing.lg),
              const HomeSectionHeader(title: '추천 티켓'),
              const SizedBox(height: AppSpacing.sm),
              RecommendedTicketList(
                tickets: _recommendedTickets.take(3).toList(),
              ),
              const SizedBox(height: AppSpacing.xl),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const HomeBottomNav(),
    );
  }
}
