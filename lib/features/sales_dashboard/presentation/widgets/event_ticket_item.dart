import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/presentation/ui_models/event_ticket_ui_model.dart';

class EventTicketItem extends StatelessWidget {
  final EventTicketUiModel model;

  const EventTicketItem({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.background,
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(AppRadius.lg),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildThumbnail(),
            const SizedBox(width: AppSpacing.md),
            Expanded(child: _buildTicketInfo(context)),
          ],
        ),
      ),
    );
  }

  Widget _buildThumbnail() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.md),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppRadius.md),
        child: model.thumbnailUrl != null
            ? CachedNetworkImage(
                imageUrl: model.thumbnailUrl!,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                placeholder: (context, url) => _buildThumbnailPlaceholder(
                  Icons.confirmation_number_outlined,
                ),
                errorWidget: (context, url, error) =>
                    _buildThumbnailPlaceholder(Icons.broken_image_outlined),
              )
            : _buildThumbnailPlaceholder(Icons.confirmation_number_outlined),
      ),
    );
  }

  Widget _buildThumbnailPlaceholder(IconData icon) {
    return Container(
      width: 80,
      height: 80,
      color: AppColors.muted,
      child: Center(
        child: Icon(
          icon,
          color: AppColors.textSecondary.withValues(alpha: 0.3),
          size: 32,
        ),
      ),
    );
  }

  Widget _buildTicketInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                model.seatInfo,
                style: AppTextStyles.ticketTitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
            _buildStatusBadge(),
          ],
        ),
        const SizedBox(height: AppSpacing.xs),
        Text(model.priceText, style: AppTextStyles.priceDisplay),
        const SizedBox(height: AppSpacing.sm),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              model.quantityText,
              style: AppTextStyles.body2.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: Text(
                '·',
                style: AppTextStyles.body2.copyWith(
                  color: AppColors.textTertiary,
                ),
              ),
            ),
            Text(
              '총',
              style: AppTextStyles.body2.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              model.totalSalesAmountText.replaceFirst('총 ', ''),
              style: AppTextStyles.body2.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.xs),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.calendar_today_outlined,
              size: 12,
              color: AppColors.textSecondary,
            ),
            const SizedBox(width: 4),
            Text(
              model.dateText,
              style: AppTextStyles.caption.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
        if (model.showVerificationGuide) ...[
          const SizedBox(height: AppSpacing.sm),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.sm,
              vertical: AppSpacing.xs,
            ),
            decoration: BoxDecoration(
              color: AppColors.warning.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(AppRadius.md),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.info_outline,
                  size: 14,
                  color: AppColors.warning,
                ),
                const SizedBox(width: AppSpacing.xs),
                Expanded(
                  child: Text(
                    '정산 계좌 등록 필요',
                    style: AppTextStyles.caption.copyWith(
                      color: AppColors.warning,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () =>
                      context.pushNamed(AppRouterPath.bankAccountRegister.name),
                  child: Text(
                    '등록하러가기',
                    style: AppTextStyles.caption.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildStatusBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: model.statusColor.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(AppRadius.lg),
        border: Border.all(
          color: model.statusColor.withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: Text(
        model.statusText,
        style: AppTextStyles.caption.copyWith(
          color: model.statusTextColor ?? model.statusColor,
          fontWeight: FontWeight.w700,
          fontSize: 11,
        ),
      ),
    );
  }
}
