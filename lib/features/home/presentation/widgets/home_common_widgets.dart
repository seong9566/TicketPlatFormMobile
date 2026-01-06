import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'TicketSwap',
            style: AppTextStyles.heading2.copyWith(
              color: AppColors.primary,
              letterSpacing: -0.5,
              fontSize: 24,
            ),
          ),
          Row(
            children: [
              Stack(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none_rounded,
                      color: AppColors.textPrimary,
                      size: 28,
                    ),
                  ),
                  Positioned(
                    right: 12,
                    top: 12,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                        color: Color(0xFF22C55E),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person_outline_rounded,
                  color: AppColors.textPrimary,
                  size: 28,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.md,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F5F9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const Icon(Icons.search, color: Color(0xFF94A3B8), size: 22),
          const SizedBox(width: AppSpacing.sm),
          Text(
            '아티스트, 공연장, 이벤트 검색',
            style: AppTextStyles.body2.copyWith(
              color: const Color(0xFF94A3B8),
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

class HomeSectionHeader extends StatelessWidget {
  const HomeSectionHeader({super.key, required this.title, this.trailing});

  final String title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyles.body1.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: AppColors.textPrimary,
            ),
          ),
          if (trailing != null) trailing!,
        ],
      ),
    );
  }
}
