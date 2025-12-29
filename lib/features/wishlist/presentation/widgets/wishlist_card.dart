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
        borderRadius: BorderRadius.circular(AppRadius.md),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
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
                  borderRadius: BorderRadius.circular(AppRadius.sm),
                  child: Image.network(
                    item.imageUrl,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
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
                            child: RichText(
                              text: TextSpan(
                                style: AppTextStyles.body1.copyWith(
                                  color: AppColors.textPrimary,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: [
                                  TextSpan(text: '${item.category} '),
                                  TextSpan(text: item.title),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onLikeTap,
                            child: const Icon(
                              Icons.favorite,
                              color: AppColors.primary,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        item.dateDisplay,
                        style: AppTextStyles.body2.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        item.priceDisplay,
                        style: AppTextStyles.body1.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1, color: AppColors.border),
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
}
