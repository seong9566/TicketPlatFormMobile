import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/utils/date_format_util.dart';
import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';
import 'package:ticket_platform_mobile/features/search/presentation/viewmodels/search_viewmodel.dart';
import 'package:ticket_platform_mobile/features/search/presentation/widgets/popular_search_section.dart';
import 'package:ticket_platform_mobile/features/search/presentation/widgets/recent_search_section.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_search_bar.dart';
import 'package:ticket_platform_mobile/features/search/presentation/widgets/search_category_chips.dart';

class SearchView extends ConsumerStatefulWidget {
  const SearchView({super.key});

  @override
  ConsumerState<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends ConsumerState<SearchView> {
  final _controller = TextEditingController();

  static const _recentKeywords = ['세븐틴 콘서트', '뮤지컬 위키드', 'BTS', '아이유 콘서트'];

  static const _popularKeywords = [
    '세븐틴',
    '아이브',
    '뮤지컬 지킬앤하이드',
    'NCT DREAM',
    '르세라핌',
    '뮤지컬 레미제라블',
    '에스파',
    '임영웅',
    '뉴진스',
    '발레 호두까기 인형',
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onSubmitted() {
    ref.read(searchViewModelProvider.notifier).search(_controller.text);
  }

  @override
  Widget build(BuildContext context) {
    final searchState = ref.watch(searchViewModelProvider);
    final hasResult = searchState.result != null;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: AppSpacing.md),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
              child: AppSearchBar(
                showBackIcon: true,
                hintText: '아티스트, 공연, 장소 검색',
                controller: _controller,
                onSubmitted: _onSubmitted,
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            const SearchCategoryChips(),
            const SizedBox(height: AppSpacing.lg),
            if (searchState.isLoading)
              const Expanded(child: Center(child: CircularProgressIndicator()))
            else if (searchState.errorMessage != null)
              Expanded(
                child: Center(
                  child: Text(
                    searchState.errorMessage!,
                    style: AppTextStyles.body2.copyWith(color: AppColors.error),
                  ),
                ),
              )
            else if (hasResult)
              Expanded(child: _SearchResultView(result: searchState))
            else
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.lg,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const RecentSearchSection(keywords: _recentKeywords),
                      const SizedBox(height: AppSpacing.lg),
                      const PopularSearchSection(keywords: _popularKeywords),
                      const SizedBox(height: AppSpacing.xl),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _SearchResultView extends StatelessWidget {
  const _SearchResultView({required this.result});

  final SearchState result;

  @override
  Widget build(BuildContext context) {
    final data = result.result!;
    final events = data.events;
    final tickets = data.tickets;
    final totalCount = data.totalCount;

    if (events.isEmpty && tickets.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.search_off,
              size: 56,
              color: AppColors.textTertiary,
            ),
            const SizedBox(height: AppSpacing.md),
            Text(
              '검색 결과가 없습니다.',
              style: AppTextStyles.body1.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      );
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
            child: Text(
              '검색 결과 $totalCount건',
              style: AppTextStyles.body2.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ),
          if (events.isNotEmpty) ...[
            const SizedBox(height: AppSpacing.sm),
            _SectionHeader(icon: Icons.event_note_rounded, label: '이벤트'),
            const SizedBox(height: AppSpacing.sm),
            ...events.map(
              (e) => _EventResultCard(
                title: e.title,
                eventDate: e.eventDate,
                minPrice: e.minPrice,
                onTap: () => context.pushNamed(
                  AppRouterPath.ticketing.name,
                  pathParameters: {'perfId': e.eventId.toString()},
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
          ],
          if (tickets.isNotEmpty) ...[
            _SectionHeader(
              icon: Icons.confirmation_number_rounded,
              label: '티켓',
            ),
            const SizedBox(height: AppSpacing.sm),
            ...tickets.map(
              (t) => _TicketResultCard(
                eventTitle: t.eventTitle ?? '-',
                seatInfo: t.seatInfo,
                price: t.price,
                status: t.status,
                onTap: () => context.pushNamed(
                  AppRouterPath.ticketDetail.name,
                  pathParameters: {'listId': t.ticketId.toString()},
                ),
              ),
            ),
          ],
          const SizedBox(height: AppSpacing.xl),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: AppColors.primary),
        const SizedBox(width: AppSpacing.xs),
        Text(
          label,
          style: AppTextStyles.body1.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
      ],
    );
  }
}

class _EventResultCard extends StatelessWidget {
  const _EventResultCard({
    required this.title,
    required this.onTap,
    this.eventDate,
    this.minPrice,
  });

  final String title;
  final String? eventDate;
  final int? minPrice;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: AppColors.primary.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(
                Icons.event_rounded,
                size: 20,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.body1.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (eventDate != null) ...[
                    const SizedBox(height: 2),
                    Text(
                      DateFormatUtil.formatStringDateTime(eventDate),
                      style: AppTextStyles.body2.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            if (minPrice != null) ...[
              const SizedBox(width: AppSpacing.sm),
              Text(
                '${NumberFormatUtil.formatNumber(minPrice!)}원~',
                style: AppTextStyles.body2.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _TicketResultCard extends StatelessWidget {
  const _TicketResultCard({
    required this.eventTitle,
    required this.onTap,
    this.seatInfo,
    this.price,
    this.status,
  });

  final String eventTitle;
  final String? seatInfo;
  final int? price;
  final String? status;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColors.border)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    eventTitle,
                    style: AppTextStyles.body1.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (seatInfo != null) ...[
                    const SizedBox(height: 2),
                    Text(
                      seatInfo!,
                      style: AppTextStyles.body2.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
            if (price != null)
              Text(
                '${NumberFormatUtil.formatNumber(price!)}원',
                style: AppTextStyles.body2.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
