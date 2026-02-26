import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
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
              const Expanded(
                child: Center(child: CircularProgressIndicator()),
              )
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
              Expanded(
                child: _SearchResultView(result: searchState),
              )
            else
              Expanded(
                child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
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
            const Icon(Icons.search_off, size: 48, color: AppColors.textTertiary),
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
          Text(
            '검색 결과 $totalCount건',
            style: AppTextStyles.body2.copyWith(color: AppColors.textSecondary),
          ),
          const SizedBox(height: AppSpacing.md),
          if (events.isNotEmpty) ...[
            Text('이벤트', style: AppTextStyles.body1.copyWith(fontSize: 16)),
            const SizedBox(height: AppSpacing.sm),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: events.length,
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemBuilder: (_, i) {
                final e = events[i];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(e.title, style: AppTextStyles.body1),
                  subtitle: e.eventDate != null
                      ? Text(e.eventDate!, style: AppTextStyles.body2)
                      : null,
                  trailing: e.minPrice != null
                      ? Text(
                          '${e.minPrice}원~',
                          style: AppTextStyles.body2.copyWith(
                            color: AppColors.primary,
                          ),
                        )
                      : null,
                );
              },
            ),
            const SizedBox(height: AppSpacing.lg),
          ],
          if (tickets.isNotEmpty) ...[
            Text('티켓', style: AppTextStyles.body1.copyWith(fontSize: 16)),
            const SizedBox(height: AppSpacing.sm),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: tickets.length,
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemBuilder: (_, i) {
                final t = tickets[i];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    t.eventTitle ?? '',
                    style: AppTextStyles.body1,
                  ),
                  subtitle: t.seatInfo != null
                      ? Text(t.seatInfo!, style: AppTextStyles.body2)
                      : null,
                  trailing: t.price != null
                      ? Text(
                          '${t.price}원',
                          style: AppTextStyles.body2.copyWith(
                            color: AppColors.primary,
                          ),
                        )
                      : null,
                );
              },
            ),
          ],
          const SizedBox(height: AppSpacing.xl),
        ],
      ),
    );
  }
}
