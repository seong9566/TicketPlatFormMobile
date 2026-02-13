import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_ticket_detail_ui_model.dart';

class TicketDetailBadge extends StatelessWidget {
  final String label;
  final Color color;
  final Color bgColor;

  const TicketDetailBadge({
    super.key,
    required this.label,
    required this.color,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w700,
          color: color,
        ),
      ),
    );
  }
}

class TicketDetailThickDivider extends StatelessWidget {
  const TicketDetailThickDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: double.infinity,
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: AppSpacing.md),
    );
  }
}

class TicketDetailThinDivider extends StatelessWidget {
  const TicketDetailThinDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: double.infinity,
      color: AppColors.border, // 얇은 구분선은 실선 보더색 유지
      margin: const EdgeInsets.symmetric(
        vertical: AppSpacing.md,
        horizontal: AppSpacing.md,
      ),
    );
  }
}

class TicketDetailSectionHeader extends StatelessWidget {
  final String title;
  final List<Widget>? actions;

  const TicketDetailSectionHeader({
    super.key,
    required this.title,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.lg,
        0,
        AppSpacing.lg,
        AppSpacing.sm,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyles.body1.copyWith(
              fontWeight: FontWeight.w800,
              color: AppColors.textPrimary,
            ),
          ),
          if (actions != null) ...actions!,
        ],
      ),
    );
  }
}

class TicketDetailDescription extends StatelessWidget {
  final String? description;

  const TicketDetailDescription({super.key, this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.xs,
      ),
      child: Text(
        description ?? '설명이 없습니다.',
        style: const TextStyle(
          fontSize: 14,
          height: 1.5,
          color: AppColors.textPrimary,
        ),
      ),
    );
  }
}

class TicketDetailImageSection extends StatelessWidget {
  final String imageUrl;

  const TicketDetailImageSection({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(
            AppSpacing.lg,
            AppSpacing.md,
            AppSpacing.lg,
            AppSpacing.sm,
          ),
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: AppColors.muted,
            borderRadius: BorderRadius.circular(AppRadius.lg),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppRadius.lg),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.cover,
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
        const Center(
          child: Text(
            '티켓 이미지',
            style: TextStyle(color: AppColors.textTertiary, fontSize: 12),
          ),
        ),
        const SizedBox(height: AppSpacing.lg),
      ],
    );
  }
}

class TicketDetailStatusBadges extends StatelessWidget {
  final TicketingTicketDetailUiModel detail;

  const TicketDetailStatusBadges({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (detail.isConsecutive == true)
          TicketDetailBadge(
            label: '연석',
            color: AppColors.textSecondary,
            bgColor: AppColors.textSecondary.withValues(alpha: 0.1),
          ),
        if (detail.hasTicket == true) ...[
          const SizedBox(width: 4),
          TicketDetailBadge(
            label: '티켓보유',
            color: AppColors.primary,
            bgColor: AppColors.primary.withValues(alpha: 0.08),
          ),
        ],
      ],
    );
  }
}
