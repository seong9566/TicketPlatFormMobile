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
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.lg,
        ),
        decoration: const BoxDecoration(
          color: AppColors.card,
          border: Border(bottom: BorderSide(color: AppColors.border, width: 1)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeaderSection(),
            const SizedBox(height: AppSpacing.sm),
            _buildInfoSection(),
            if (ticket.description != null &&
                ticket.description!.isNotEmpty) ...[
              const SizedBox(height: AppSpacing.sm),
              Text(
                ticket.description!,
                style: AppTextStyles.body2.copyWith(
                  color: AppColors.textSecondary,
                  fontSize: 13,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
            const SizedBox(height: AppSpacing.md),
            _buildPriceSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          ticket.gradeName,
          style: AppTextStyles.body1.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: AppColors.textPrimary,
          ),
        ),
        GestureDetector(
          onTap: onFavoriteTap,
          behavior: HitTestBehavior.translucent,
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Icon(
              ticket.isFavorited ? Icons.favorite : Icons.favorite_border,
              size: 20,
              color: ticket.isFavorited
                  ? AppColors.destructive
                  : AppColors.textTertiary,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInfoSection() {
    // 1층 2열 | 배송거래 | 티켓보유 | 연석
    final infoList = [
      if (ticket.seatInfo != null) ticket.seatInfo,
      ...ticket.transactionFeatures,
    ].where((e) => e != null && e.toString().isNotEmpty).join(' | ');

    return Row(
      children: [
        // Chair Icon
        // Using a brownish color similar to the image
        const Icon(Icons.chair_outlined, size: 16, color: Color(0xFFA67153)),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            infoList,
            style: AppTextStyles.body2.copyWith(
              color: AppColors.textSecondary,
              fontSize: 13,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget _buildPriceSection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '${NumberFormatUtil.formatNumber(ticket.price)}원',
          style: AppTextStyles.heading3.copyWith(
            color: AppColors.success,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        if (ticket.price != ticket.originalPrice) ...[
          const SizedBox(width: 8),
          Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: Text(
              '정가 ${NumberFormatUtil.formatNumber(ticket.originalPrice)}원',
              style: AppTextStyles.body2.copyWith(
                color: AppColors.textTertiary,
                decoration: TextDecoration.lineThrough,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ],
    );
  }
}
