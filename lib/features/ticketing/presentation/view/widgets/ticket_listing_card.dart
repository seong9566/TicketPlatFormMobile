import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_ticket_ui_model.dart';

class TicketListingCard extends StatelessWidget {
  final TicketingTicketUiModel ticket;
  final VoidCallback onTap;
  final VoidCallback? onFavoriteTap;

  const TicketListingCard({
    super.key,
    required this.ticket,
    required this.onTap,
    this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(color: AppColors.card),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.md,
                vertical: AppSpacing.md,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeaderSection(),
                  const SizedBox(height: AppSpacing.sm),
                  _buildFeatureSection(),
                  const SizedBox(height: AppSpacing.md),
                  _buildPriceSection(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
              child: const Divider(
                height: 1,
                thickness: 1,
                color: AppColors.border,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // 좌석 등급
            Container(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.sm),
              decoration: BoxDecoration(
                color: AppColors.primary.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                ticket.gradeName,
                style: AppTextStyles.caption.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GestureDetector(
              onTap: onFavoriteTap,
              behavior: HitTestBehavior.translucent,
              child: Icon(
                ticket.isFavorited ? Icons.favorite : Icons.favorite_border,
                size: 22,
                color: ticket.isFavorited
                    ? AppColors.destructive
                    : AppColors.textTertiary,
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.xs),
        // 좌석 상세 정보 (중요 정보 1)
        Text(
          ticket.seatInfo ?? '좌석 정보 미정',
          style: AppTextStyles.heading2.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildFeatureSection() {
    return Wrap(
      spacing: AppSpacing.xs,
      runSpacing: AppSpacing.xs,
      children: ticket.transactionFeatures.map((feature) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: AppColors.muted,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            feature,
            style: AppTextStyles.caption.copyWith(
              color: AppColors.textSecondary,
              fontSize: 11,
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildPriceSection() {
    final unitPriceText = NumberFormatUtil.formatNumber(ticket.price);
    final totalPriceText = NumberFormatUtil.formatNumber(ticket.totalPrice);
    final originalPriceText = NumberFormatUtil.formatNumber(
      ticket.originalPrice,
    );
    final isDiscounted = ticket.price < ticket.originalPrice;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (isDiscounted)
                  Text(
                    '정가 $originalPriceText원', // 중요 정보 4
                    style: AppTextStyles.caption.copyWith(
                      color: AppColors.textTertiary,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      unitPriceText,
                      style: AppTextStyles.heading2.copyWith(
                        color: AppColors.textPrimary,
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(width: 2),
                    Text(
                      '원',
                      style: AppTextStyles.body1.copyWith(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' / 장',
                      style: AppTextStyles.body2.copyWith(
                        color: AppColors.textTertiary,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // 갯수 (중요 정보 3)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.secondary.withValues(alpha: 0.05),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                '총 ${ticket.quantity}장',
                style: AppTextStyles.body2.copyWith(
                  color: AppColors.secondary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        // const SizedBox(height: AppSpacing.xs),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Text(
        //       '총 결제 금액',
        //       style: AppTextStyles.caption.copyWith(
        //         color: AppColors.textSecondary,
        //       ),
        //     ),
        //     Text(
        //       '$totalPriceText원',
        //       style: AppTextStyles.body1.copyWith(
        //         color: AppColors.textPrimary,
        //         fontWeight: FontWeight.w600,
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
