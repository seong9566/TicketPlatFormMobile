import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
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
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(AppRadius.lg),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeaderSection(),
          const SizedBox(height: AppSpacing.md),
          if (ticket.description != null && ticket.description!.isNotEmpty) ...[
            Text(
              ticket.description!,
              style: AppTextStyles.body2.copyWith(
                color: AppColors.textSecondary,
                fontSize: 12,
              ),
            ),
          ],
          _buildBottomSection(context),
        ],
      ),
    );
  }

  Widget _buildHeaderSection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title 섹션
              Row(
                children: [
                  Expanded(
                    child: Text(
                      ticket.title,
                      style: AppTextStyles.body1,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  GestureDetector(
                    onTap: onFavoriteTap,
                    child: Icon(
                      ticket.isFavorited
                          ? Icons.favorite
                          : Icons.favorite_border,
                      size: 20,
                      color: ticket.isFavorited
                          ? Colors.red
                          : AppColors.textTertiary,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.event_seat_outlined,
                    size: 14,
                    color: AppColors.textSecondary,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '${ticket.seatInfo ?? '좌석 정보 없음'} | ${ticket.gradeName}',
                    style: AppTextStyles.body2.copyWith(
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                  if (ticket.transactionFeatures.isNotEmpty) ...[
                    Text(
                      ' | ${ticket.transactionFeatures.join(' | ')}',
                      style: AppTextStyles.body2.copyWith(
                        color: AppColors.textSecondary,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBottomSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildPriceSection(),
        InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: AppColors.success,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              '구매하기',
              style: AppTextStyles.body2.copyWith(
                color: AppColors.primaryForeground,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPriceSection() {
    return Row(
      children: [
        Text(
          NumberFormatUtil.formatPrice(ticket.price),
          style: AppTextStyles.heading3.copyWith(
            color: AppColors.success,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        if (ticket.price != ticket.originalPrice) ...[
          Text(
            '정가 ${NumberFormatUtil.formatPrice(ticket.originalPrice)}',
            style: AppTextStyles.body2.copyWith(
              color: AppColors.textTertiary,
              decoration: TextDecoration.lineThrough,
              fontSize: 12,
            ),
          ),
        ],
      ],
    );
  }
}
