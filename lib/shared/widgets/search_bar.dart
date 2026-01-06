import 'package:flutter/material.dart';

import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

/// 공통 검색바 UI
/// 패딩은 사용하는 화면에서 직접 감싸서 넣습니다.
class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
    this.showBackIcon = true,
  });

  /// 뒤로가기 아이콘 노출 여부
  final bool showBackIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (showBackIcon) ...[
          const Icon(
            Icons.arrow_back_ios_new,
            size: 18,
            color: AppColors.textSecondary,
          ),
          const SizedBox(width: AppSpacing.sm),
        ],
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
    );
  }
}

