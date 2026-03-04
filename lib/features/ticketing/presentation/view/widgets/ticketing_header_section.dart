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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeroImage(),
        const SizedBox(height: AppSpacing.md),
        _buildInfoCards(),
      ],
    );
  }

  /// 히어로 이미지 + 그라디언트 오버레이 + 타이틀
  Widget _buildHeroImage() {
    return SizedBox(
      height: 280,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // 배경 이미지
          CachedNetworkImage(
            imageUrl: ticketingInfo?.imageUrl ?? '',
            fit: BoxFit.cover,
            placeholder: (context, url) => Container(
              color: AppColors.ticketThumbnailBackground,
              child: const Center(
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ),
            errorWidget: (context, url, error) => Container(
              color: AppColors.ticketThumbnailBackground,
              child: const Icon(
                Icons.image_not_supported_outlined,
                color: AppColors.textTertiary,
                size: 40,
              ),
            ),
          ),
          // 하단 그라디언트 오버레이
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withValues(alpha: 0.75),
                ],
                stops: const [0.35, 1.0],
              ),
            ),
          ),
          // 타이틀 오버레이
          Positioned(
            left: AppSpacing.md,
            right: AppSpacing.md,
            bottom: AppSpacing.lg,
            child: Text(
              ticketingInfo?.title ?? '',
              style: AppTextStyles.heading1.copyWith(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.w800,
                height: 1.3,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  /// 날짜/장소 info 카드
  Widget _buildInfoCards() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      child: Column(
        children: [
          _buildInfoCard(
            Icons.calendar_today_outlined,
            ticketingInfo != null
                ? DateFormatUtil.formatFullDateTime(ticketingInfo!.eventDate)
                : '',
            '날짜 및 시간',
          ),
          const SizedBox(height: AppSpacing.sm),
          _buildInfoCard(
            Icons.location_on_outlined,
            ticketingInfo?.location ?? '',
            '장소',
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard(IconData icon, String text, String label) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(AppRadius.md),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: AppColors.muted,
              borderRadius: BorderRadius.circular(AppRadius.sm),
            ),
            child: Icon(icon, color: AppColors.textSecondary, size: 20),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: AppTextStyles.body1.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  label,
                  style: AppTextStyles.caption.copyWith(
                    color: AppColors.textTertiary,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
