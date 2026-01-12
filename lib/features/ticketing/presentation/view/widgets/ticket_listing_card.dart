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

  const TicketListingCard({
    super.key,
    required this.ticket,
    required this.onTap,
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildGradeBadge(),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ticket.seatInfo ?? '좌석 정보 없음',
                          style: AppTextStyles.body1.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        if (ticket.description != null &&
                            ticket.description!.isNotEmpty) ...[
                          const SizedBox(height: 4),
                          Text(
                            ticket.description!,
                            style: AppTextStyles.body2.copyWith(
                              color: AppColors.textSecondary,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
              if (ticket.transactionFeatures.isNotEmpty) ...[
                const SizedBox(height: 4),
                Text(
                  ticket.transactionFeatures.join(' | '),
                  style: AppTextStyles.body2.copyWith(
                    color: AppColors.textSecondary,
                    fontSize: 12,
                  ),
                ),
              ],
            ],
          ),
        ),
        const SizedBox(width: AppSpacing.md),
        _buildPriceSection(),
      ],
    );
  }

  Widget _buildGradeBadge() {
    return _buildBadge(
      ticket.gradeName,
      AppColors.success.withValues(alpha: 0.1),
      AppColors.success,
    );
  }

  Widget _buildBadge(String text, Color backgroundColor, Color textColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: AppTextStyles.caption.copyWith(
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: 11,
        ),
      ),
    );
  }

  Widget _buildBottomSection(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: _buildSellerSection()),
        const SizedBox(width: AppSpacing.sm),
        _buildBuyButton(context),
      ],
    );
  }

  Widget _buildPriceSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
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
          const SizedBox(height: 2),
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

  Widget _buildBuyButton(BuildContext context) {
    return InkWell(
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
    );
  }

  Widget _buildSellerSection() {
    return Row(
      children: [
        // 프로필 이미지
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: AppColors.success.withValues(alpha: 0.1), // 연한 초록색 배경
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              ticket.seller.nickname.isNotEmpty
                  ? ticket.seller.nickname[0]
                  : '?',
              style: TextStyle(
                color: AppColors.success, // 진한 초록색 텍스트
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ticket.title,
                style: AppTextStyles.body2.copyWith(
                  color: AppColors.textTertiary,
                  fontSize: 13,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 2),
              Text(
                ticket.seatInfo ?? '',
                style: AppTextStyles.heading3.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
