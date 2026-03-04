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

  /// 찜 여부에 따른 왼쪽 border 색상
  Color get _accentColor =>
      ticket.isFavorited ? AppColors.primary : Colors.grey;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.xs,
        ),
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(AppRadius.md),
          border: Border.all(color: AppColors.border),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppRadius.md),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // ── 왼쪽 accent bar (찜 여부 색상) ──
                Container(width: 4, color: _accentColor),
                // ── 카드 본문 ──
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(AppSpacing.md),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildTopRow(),
                        const SizedBox(height: AppSpacing.sm),
                        _buildSeatInfo(),
                        if (ticket.transactionFeatures.isNotEmpty) ...[
                          const SizedBox(height: AppSpacing.sm),
                          _buildTags(),
                        ],
                        const SizedBox(height: AppSpacing.md),
                        // ── 가격·버튼 위 구분선 ──
                        const Divider(
                          height: 1,
                          thickness: 1,
                          color: AppColors.border,
                        ),
                        const SizedBox(height: AppSpacing.sm),
                        _buildPriceRow(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// 등급 뱃지 + 수량 + 좋아요
  Widget _buildTopRow() {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          decoration: BoxDecoration(
            color: AppColors.primary.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            ticket.gradeName,
            style: AppTextStyles.caption.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ),
        const SizedBox(width: 6),
        Text(
          '· 총 ${ticket.quantity}장',
          style: AppTextStyles.caption.copyWith(
            color: AppColors.textSecondary,
            fontSize: 12,
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: onFavoriteTap,
          behavior: HitTestBehavior.translucent,
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Icon(
              ticket.isFavorited ? Icons.favorite : Icons.favorite_border,
              size: 22,
              color: ticket.isFavorited ? AppColors.primary : Colors.grey,
            ),
          ),
        ),
      ],
    );
  }

  /// 좌석 정보
  Widget _buildSeatInfo() {
    return Text(
      ticket.seatInfo ?? '좌석 정보 미정',
      style: AppTextStyles.heading3.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  /// 거래 특징 태그
  Widget _buildTags() {
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

  /// 가격 + 상세보기 버튼
  Widget _buildPriceRow() {
    final priceText = NumberFormatUtil.formatNumber(ticket.price);
    final originalPriceText = NumberFormatUtil.formatNumber(
      ticket.originalPrice,
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 정가 항상 표시 (취소선)
              Text(
                '정가 $originalPriceText원',
                style: AppTextStyles.caption.copyWith(
                  color: AppColors.textTertiary,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: AppColors.textTertiary,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 2),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    priceText,
                    style: AppTextStyles.heading2.copyWith(
                      color: AppColors.primary,
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(width: 2),
                  Text(
                    '원',
                    style: AppTextStyles.body1.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 36,
          child: ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
              elevation: 0,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppRadius.pill),
              ),
            ),
            child: Text(
              '상세보기',
              style: AppTextStyles.body2.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
