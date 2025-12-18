import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_ui_model.dart';

class ListingDetailTicketHeader extends StatelessWidget {
  final TicketListingUiModel listing;

  const ListingDetailTicketHeader({super.key, required this.listing});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: AppSpacing.lg,
        right: AppSpacing.lg,
        top: AppSpacing.sm,
        bottom: AppSpacing.md,
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _buildBadge(
                listing.gradeName,
                const Color(0xFFF2F0FF),
                const Color(0xFF7B61FF),
              ),
              const SizedBox(width: 8),
              _buildBadge(
                listing.ticketCountInfo,
                const Color(0xFFF1F5F9),
                AppColors.textTertiary,
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            listing.seatInfo,
            style: AppTextStyles.heading3.copyWith(
              fontSize: 26,
              fontWeight: FontWeight.w900,
              letterSpacing: -0.5,
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                NumberFormat('#,###').format(listing.price),
                style: AppTextStyles.heading2.copyWith(
                  color: AppColors.success,
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                  letterSpacing: -1.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 6, left: 4),
                child: Text(
                  '원',
                  style: AppTextStyles.heading3.copyWith(
                    color: AppColors.success,
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                ),
              ),

              const SizedBox(width: 8),
              if (listing.price != listing.originalPrice)
                Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Text(
                    '정가 ${NumberFormat('#,###').format(listing.originalPrice)}원',
                    style: AppTextStyles.body2.copyWith(
                      color: AppColors.textTertiary,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBadge(String text, Color bg, Color textColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: AppTextStyles.caption.copyWith(
          color: textColor,
          fontWeight: FontWeight.w800,
          fontSize: 11,
        ),
      ),
    );
  }
}
