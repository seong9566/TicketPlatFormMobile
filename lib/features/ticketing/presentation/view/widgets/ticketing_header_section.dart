import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/utils/date_format_util.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_info_ui_model.dart';

class TicketingHeaderSection extends StatelessWidget {
  final TicketingInfoUiModel? ticketingInfo;

  const TicketingHeaderSection({required this.ticketingInfo, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.lg,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildThumbnail(),
          const SizedBox(width: AppSpacing.md),
          Expanded(child: _buildDetails()),
        ],
      ),
    );
  }

  Widget _buildThumbnail() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppRadius.md),
      child: CachedNetworkImage(
        imageUrl: ticketingInfo?.imageUrl ?? '',
        width: 100,
        height: 120,
        fit: BoxFit.cover,
        placeholder: (context, url) => Container(
          color: AppColors.muted,
          child: const Center(
            child: SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: AppColors.primary,
              ),
            ),
          ),
        ),
        errorWidget: (context, url, error) => Container(
          color: AppColors.muted,
          child: const Icon(
            Icons.image_not_supported_outlined,
            color: AppColors.textTertiary,
          ),
        ),
      ),
    );
  }

  Widget _buildDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ticketingInfo?.title ?? '',
          style: AppTextStyles.heading3,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: AppSpacing.xs),
        Row(
          children: [
            const Icon(
              Icons.calendar_today,
              size: 14,
              color: AppColors.textSecondary,
            ),
            const SizedBox(width: 4),
            Text(
              ticketingInfo != null
                  ? DateFormatUtil.formatFullDateTime(ticketingInfo!.eventDate)
                  : '',
              style: AppTextStyles.body2.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            const Icon(
              Icons.location_on_outlined,
              size: 14,
              color: AppColors.textSecondary,
            ),
            const SizedBox(width: 4),
            Text(
              ticketingInfo?.location ?? '',
              style: AppTextStyles.body2.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
        if (ticketingInfo?.isHot ?? false) ...[
          const SizedBox(height: AppSpacing.sm),
          _buildHotBadge(),
        ],
      ],
    );
  }

  Widget _buildHotBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.destructive, // 빨간색 배경
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        '매진 임박',
        style: AppTextStyles.caption.copyWith(
          color: AppColors.primaryForeground,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }
}
