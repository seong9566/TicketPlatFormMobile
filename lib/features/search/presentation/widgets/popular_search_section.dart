import 'package:flutter/material.dart';

import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

class PopularSearchSection extends StatelessWidget {
  const PopularSearchSection({
    super.key,
    required this.keywords,
  });

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

