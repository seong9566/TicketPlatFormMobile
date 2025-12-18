import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/event_sessions/presentation/ui_models/performance_ui_model.dart';
import 'package:ticket_platform_mobile/features/event_sessions/presentation/view/widgets/event_session_info_header.dart';
import 'package:ticket_platform_mobile/features/event_sessions/presentation/view/widgets/performance_card.dart';
import 'package:ticket_platform_mobile/features/event_sessions/presentation/view/widgets/performance_filter_bar.dart';

class EventSessionView extends ConsumerStatefulWidget {
  final String eventSessionId;

  const EventSessionView({super.key, required this.eventSessionId});

  @override
  ConsumerState<EventSessionView> createState() =>
      _EventSessionDetailViewState();
}

class _EventSessionDetailViewState extends ConsumerState<EventSessionView> {
  final ScrollController _scrollController = ScrollController();
  bool _isTitleVisible = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    // Threshold can be adjusted based on Header height
    if (_scrollController.offset > 100 && !_isTitleVisible) {
      setState(() => _isTitleVisible = true);
    } else if (_scrollController.offset <= 100 && _isTitleVisible) {
      setState(() => _isTitleVisible = false);
    }
  }

  // Mock Data
  final _eventSessionInfo = {
    'name': 'DAY6',
    'displayName': 'DAY6 (데이식스)',
    'followerCount': '120만',
    'genre': 'K-pop 록 밴드',
    'imageUrl': 'https://via.placeholder.com/150',
  };

  final _performances = [
    const PerformanceUiModel(
      id: '1',
      title: 'DAY6 월드 투어 서울',
      date: '2024.04.12 (금) 19:00',
      location: '잠실실내체육관',
      imageUrl: 'https://via.placeholder.com/150',
      ticketCount: 24,
      isSoldOut: false,
      isHot: false,
      dDay: 'D-14',
    ),
    const PerformanceUiModel(
      id: '2',
      title: 'DAY6 스페셜 콘서트 \'The Present\'',
      date: '2024.05.05 (일) 18:00',
      location: '올림픽홀',
      imageUrl: 'https://via.placeholder.com/151',
      ticketCount: 2,
      isSoldOut: false,
      isHot: true,
      dDay: '마감 임박',
    ),
    const PerformanceUiModel(
      id: '3',
      title: 'DAY6 부산 투어',
      date: '2024.05.20 (토) 17:00',
      location: '벡스코 오디토리움',
      imageUrl: 'https://via.placeholder.com/152',
      ticketCount: 15,
      isSoldOut: false,
      isHot: false,
    ),
    const PerformanceUiModel(
      id: '4',
      title: 'DAY6 공식 팬미팅',
      date: '2024.06.01 (토) 15:00',
      location: 'KBS아레나',
      imageUrl: 'https://via.placeholder.com/153',
      ticketCount: 0,
      isSoldOut: true,
      isHot: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.textPrimary),
          onPressed: () => context.pop(),
        ),
        title: AnimatedOpacity(
          opacity: _isTitleVisible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 200),
          child: Text(
            _eventSessionInfo['displayName']!,
            style: AppTextStyles.heading2.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_horiz, color: AppColors.textPrimary),
            onPressed: () {},
          ),
        ],
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: EventSessionInfoHeader(
              name: _eventSessionInfo['name']!,
              imageUrl: _eventSessionInfo['imageUrl']!,
              followerCount: _eventSessionInfo['followerCount']!,
              genre: _eventSessionInfo['genre']!,
            ),
          ),
          const SliverToBoxAdapter(
            child: Divider(height: 1, thickness: 8, color: AppColors.muted),
          ), // Spacer divider
          const SliverToBoxAdapter(child: PerformanceFilterBar()),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        '예정된 공연',
                        style: AppTextStyles.body1.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${_performances.length}',
                        style: AppTextStyles.body1.copyWith(
                          color: AppColors.success,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '정렬: 날짜순',
                        style: AppTextStyles.body2.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down,
                        size: 16,
                        color: AppColors.textSecondary,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return PerformanceCard(performance: _performances[index]);
              }, childCount: _performances.length),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 40)),
        ],
      ),
    );
  }
}
