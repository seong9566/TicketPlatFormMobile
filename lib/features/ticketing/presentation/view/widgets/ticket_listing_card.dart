import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_ui_model.dart';

class TicketListingCard extends StatelessWidget {
  final String performanceId;
  final TicketListingUiModel listing;

  const TicketListingCard({
    super.key,
    required this.performanceId,
    required this.listing,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(
        '${AppRouterPath.listingDetail}/$performanceId/${listing.id}',
      ),
      child: Container(
        margin: const EdgeInsets.only(bottom: AppSpacing.md),
        padding: const EdgeInsets.all(AppSpacing.lg),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppRadius.lg),
          border: Border.all(color: Colors.grey.withValues(alpha: 0.1)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInfoSection(),
            const SizedBox(height: AppSpacing.md),
            const Divider(height: 1),
            const SizedBox(height: AppSpacing.md),
            _buildSellerSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  _buildGradeBadge(),
                  const SizedBox(width: 8),
                  Text(
                    listing.seatInfo,
                    style: AppTextStyles.heading3.copyWith(fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                listing.tags.join('  |  '),
                style: AppTextStyles.body2.copyWith(
                  color: AppColors.textTertiary,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                listing.description ?? '',
                style: AppTextStyles.body2.copyWith(
                  color: AppColors.textTertiary,
                  fontSize: 12,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        _buildPriceSection(),
      ],
    );
  }

  Widget _buildGradeBadge() {
    final badgeColor = listing.gradeName.contains('VIP')
        ? const Color(0xFF7B61FF)
        : AppColors.primary;
    final badgeBg = badgeColor.withValues(alpha: 0.1);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: badgeBg,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        listing.gradeName,
        style: AppTextStyles.caption.copyWith(
          color: badgeColor,
          fontWeight: FontWeight.bold,
          fontSize: 10,
        ),
      ),
    );
  }

  Widget _buildPriceSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '${NumberFormat('#,###').format(listing.price)}원',
          style: AppTextStyles.heading3.copyWith(
            color: AppColors.success,
            fontSize: 18,
          ),
        ),
        if (listing.price != listing.originalPrice)
          Text(
            '정가 ${NumberFormat('#,###').format(listing.originalPrice)}원',
            style: AppTextStyles.body2.copyWith(
              color: AppColors.textTertiary,
              decoration: TextDecoration.lineThrough,
              fontSize: 12,
            ),
          ),
      ],
    );
  }

  Widget _buildSellerSection() {
    return Row(
      children: [
        CircleAvatar(
          radius: 12,
          backgroundImage: NetworkImage(listing.seller.profileImageUrl),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              listing.seller.nickname,
              style: AppTextStyles.body2.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
            Text(
              '매너 ${listing.seller.mannerTemperature}°C',
              style: AppTextStyles.caption.copyWith(
                color: AppColors.textTertiary,
                fontSize: 11,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
