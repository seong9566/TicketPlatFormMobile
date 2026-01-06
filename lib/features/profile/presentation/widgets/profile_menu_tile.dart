import 'package:flutter/material.dart';

import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

class ProfileMenuTile extends StatelessWidget {
  const ProfileMenuTile({
    super.key,
    this.icon,
    required this.title,
    this.trailingText,
    this.trailingTextColor,
    this.trailingButtonLabel,
    this.titleColor,
    this.showChevron = true,
  });

  final IconData? icon;
  final String title;
  final String? trailingText;
  final Color? trailingTextColor;
  final String? trailingButtonLabel;
  final Color? titleColor;
  final bool showChevron;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.md,
        ),
        child: Row(
          children: [
            if (icon != null) ...[
              Container(
                width: 36,
                height: 36,
                decoration: const BoxDecoration(
                  color: AppColors.muted,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  size: 20,
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(width: AppSpacing.md),
            ],
            Text(
              title,
              style: AppTextStyles.body2.copyWith(
                color: titleColor ?? AppColors.textPrimary,
              ),
            ),
            const Spacer(),
            if (trailingButtonLabel != null)
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.md,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Text(
                  trailingButtonLabel!,
                  style: AppTextStyles.caption.copyWith(
                    color: AppColors.primaryForeground,
                  ),
                ),
              )
            else if (trailingText != null)
              Padding(
                padding: const EdgeInsets.only(right: AppSpacing.xs),
                child: Text(
                  trailingText!,
                  style: AppTextStyles.caption.copyWith(
                    color: trailingTextColor ?? AppColors.textSecondary,
                  ),
                ),
              ),
            if (showChevron)
              const Icon(
                Icons.chevron_right,
                size: 18,
                color: AppColors.textTertiary,
              ),
          ],
        ),
      ),
    );
  }
}

