import 'package:flutter/material.dart' hide SearchBar;

import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/features/search/presentation/widgets/popular_search_section.dart';
import 'package:ticket_platform_mobile/features/search/presentation/widgets/recent_search_section.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_search_bar.dart';
import 'package:ticket_platform_mobile/features/search/presentation/widgets/search_category_chips.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    const recentKeywords = ['세븐틴 콘서트', '뮤지컬 위키드', 'BTS', '아이유 콘서트'];

    const popularKeywords = [
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

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: AppSpacing.md),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg),
              child: AppSearchBar(
                showBackIcon: false,
                hintText: '아티스트, 공연, 장소 검색',
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            const SearchCategoryChips(),
            const SizedBox(height: AppSpacing.lg),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const RecentSearchSection(keywords: recentKeywords),
                    const SizedBox(height: AppSpacing.lg),
                    const PopularSearchSection(keywords: popularKeywords),
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
