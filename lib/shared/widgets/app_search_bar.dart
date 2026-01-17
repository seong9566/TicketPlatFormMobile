import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

/// 공통 검색바 UI
/// 패딩은 사용하는 화면에서 직접 감싸서 넣습니다.
class AppSearchBar extends StatelessWidget {
  final bool showBackIcon;
  final TextEditingController? controller;
  final String hintText;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onSubmitted;

  const AppSearchBar({
    super.key,
    this.showBackIcon = true,
    this.controller,
    this.hintText = '검색하세요',
    this.onTap,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (showBackIcon) ...[
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.pop(),
          ),
          const SizedBox(width: AppSpacing.xs),
        ],
        Expanded(
          child: TextField(
            controller: controller,
            onTap: onTap,
            onChanged: onChanged,
            onSubmitted: onSubmitted != null ? (_) => onSubmitted!() : null,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: AppTextStyles.body2.copyWith(
                color: AppColors.textTertiary,
              ),
              prefixIcon: const Icon(
                Icons.search,
                color: AppColors.textTertiary,
              ),
              filled: true,
              fillColor: AppColors.muted,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.md,
                vertical: AppSpacing.sm,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
