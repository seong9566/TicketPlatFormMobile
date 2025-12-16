import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/category/presentation/viewmodels/category_state.dart';

class ArtistListTile extends StatelessWidget {
  final ArtistUiModel artist;

  const ArtistListTile({super.key, required this.artist});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push('${AppRouterPath.artist}/${artist.id}');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Row(
          children: [
            // Avatar Image
            Stack(
              children: [
                ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: artist.imageUrl,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        Container(color: AppColors.muted),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.person),
                  ),
                ),
                if (artist.isNew)
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(
                          10,
                        ), // Custom small radius
                        border: Border.all(
                          color: AppColors.background,
                          width: 2,
                        ),
                      ),
                      child: Text(
                        'NEW',
                        style: AppTextStyles.body2.copyWith(
                          color: AppColors.primaryForeground,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(width: AppSpacing.md),
            // Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    artist.description,
                    style: AppTextStyles.body1.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  Text(
                    artist.eventTitle,
                    style: AppTextStyles.body2,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      if (artist.isSoldOut)
                        _buildBadge(
                          '매진임박',
                          AppColors.badgeSoldOutBackground,
                          AppColors.badgeSoldOutText,
                        )
                      else if (artist.isHot)
                        _buildBadge(
                          '인기',
                          AppColors.badgeHotBackground,
                          AppColors.primary,
                        ),

                      if (artist.isSoldOut || artist.isHot)
                        const SizedBox(width: AppSpacing.sm),

                      Text(
                        artist.ticketStatusText,
                        style: AppTextStyles.body2.copyWith(
                          fontSize: 12, // smaller than body2
                          color: AppColors.textTertiary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Icon(Icons.chevron_right, color: AppColors.textTertiary),
          ],
        ),
      ),
    );
  }

  Widget _buildBadge(String text, Color bgColor, Color textColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(4), // Very small radius
      ),
      child: Text(
        text,
        style: AppTextStyles.body2.copyWith(
          // Using body2 as base but overriding size
          color: textColor,
          fontSize: 11,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
