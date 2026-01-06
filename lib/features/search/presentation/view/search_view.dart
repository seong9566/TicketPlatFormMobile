import 'package:flutter/material.dart';

import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    const recentKeywords = [
      '세븐틴 콘서트',
      '뮤지컬 위키드',
      'BTS',
      '아이유 콘서트',
    ];

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
            const SizedBox(height: AppSpacing.sm),
            const _SearchBar(),
            const SizedBox(height: AppSpacing.md),
            const _SearchCategoryChips(),
            const SizedBox(height: AppSpacing.lg),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.lg,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _RecentSearchSection(keywords: recentKeywords),
                    const SizedBox(height: AppSpacing.lg),
                    _PopularSearchSection(keywords: popularKeywords),
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

class _SearchBar extends StatelessWidget {
  const _SearchBar();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: Row(
        children: [
          const Icon(
            Icons.arrow_back_ios_new,
            size: 18,
            color: AppColors.textSecondary,
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Container(
              height: 44,
              decoration: BoxDecoration(
                color: AppColors.inputBackground,
                borderRadius: BorderRadius.circular(999),
              ),
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    size: 20,
                    color: AppColors.textSecondary,
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Text(
                    '아티스트, 공연, 장소 검색',
                    style: AppTextStyles.body2.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchCategoryChips extends StatelessWidget {
  const _SearchCategoryChips();

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'label': '전체', 'selected': true},
      {'label': '콘서트', 'selected': false},
      {'label': '뮤지컬', 'selected': false},
      {'label': '스포츠', 'selected': false},
      {'label': '전시/행사', 'selected': false},
    ];

    return SizedBox(
      height: 40,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final cat = categories[index];
          final isSelected = cat['selected'] as bool;
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.lg,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: isSelected ? AppColors.primary : Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: isSelected
                    ? Colors.transparent
                    : const Color(0xFFE2E8F0),
              ),
            ),
            child: Text(
              cat['label']! as String,
              style: AppTextStyles.body2.copyWith(
                color: isSelected ? Colors.white : AppColors.textSecondary,
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemCount: categories.length,
      ),
    );
  }
}

class _RecentSearchSection extends StatelessWidget {
  const _RecentSearchSection({required this.keywords});

  final List<String> keywords;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '최근 검색어',
              style: AppTextStyles.body1.copyWith(fontSize: 16),
            ),
            Text(
              '전체 삭제',
              style: AppTextStyles.body2.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.md),
        Wrap(
          spacing: AppSpacing.sm,
          runSpacing: AppSpacing.sm,
          children: keywords
              .map(
                (k) => Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.md,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.inputBackground,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        k,
                        style: AppTextStyles.body2.copyWith(
                          color: AppColors.textPrimary,
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Icon(
                        Icons.close,
                        size: 14,
                        color: AppColors.textSecondary,
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class _PopularSearchSection extends StatelessWidget {
  const _PopularSearchSection({required this.keywords});

  final List<String> keywords;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '인기 검색어',
          style: AppTextStyles.body1.copyWith(fontSize: 16),
        ),
        const SizedBox(height: AppSpacing.md),
        Column(
          children: List.generate(
            keywords.length,
            (index) => _PopularKeywordRow(
              rank: index + 1,
              keyword: keywords[index],
            ),
          ),
        ),
      ],
    );
  }
}

class _PopularKeywordRow extends StatelessWidget {
  const _PopularKeywordRow({
    required this.rank,
    required this.keyword,
  });

  final int rank;
  final String keyword;

  @override
  Widget build(BuildContext context) {
    final isTop3 = rank <= 3;
    final rankColor = isTop3 ? const Color(0xFF22C55E) : AppColors.textSecondary;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          SizedBox(
            width: 24,
            child: Text(
              '$rank',
              style: AppTextStyles.body2.copyWith(
                color: rankColor,
                fontWeight: isTop3 ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Text(
              keyword,
              style: AppTextStyles.body2.copyWith(
                color: AppColors.textPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

