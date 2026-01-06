import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/features/wishlist/presentation/ui_models/wishlist_ui_model.dart';

class WishlistCard extends StatelessWidget {
  final WishlistUiModel item;
  final VoidCallback onLikeTap;

  const WishlistCard({super.key, required this.item, required this.onLikeTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16), // Rounded as per image
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSpacing.md),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Poster Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppRadius.md),
                  child: CachedNetworkImage(
                    imageUrl: item.imageUrl,
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Container(
                      color: const Color(0xFFF1F5F9),
                      child: const Center(
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                // Details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              '${item.category} ${item.title}',
                              style: AppTextStyles.body1.copyWith(
                                color: AppColors.textPrimary,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          GestureDetector(
                            onTap: onLikeTap,
                            child: const Icon(
                              Icons.favorite,
                              color: Color(
                                0xFF22C55E,
                              ), // Vibrant green as per image
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        item.dateDisplay,
                        style: AppTextStyles.body2.copyWith(
                          color: AppColors.textTertiary,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        item.priceDisplay,
                        style: AppTextStyles.heading3.copyWith(
                          fontWeight: FontWeight.w900,
                          color: AppColors.textPrimary,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          _buildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.md,
              vertical: AppSpacing.sm,
            ),
            child: Text(
              item.likedAtDisplay,
              style: AppTextStyles.caption.copyWith(
                color: AppColors.textTertiary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      child: Container(
        width: double.infinity,
        height: 1.0,
        decoration: BoxDecoration(color: Color(0xFFE2E8F0)),
      ),
    );
  }
}
