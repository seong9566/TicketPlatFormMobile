import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ticket_platform_mobile/features/home/presentation/ui_models/home_ui_model.dart';

class RecommendedTicketList extends StatelessWidget {
  const RecommendedTicketList({super.key, required this.tickets});

  final List<RecommendedEventUiModel> tickets;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: tickets
          .map(
            (ticket) => Container(
              margin: const EdgeInsets.only(
                bottom: AppSpacing.sm,
                left: AppSpacing.md,
                right: AppSpacing.md,
              ),
              padding: const EdgeInsets.all(AppSpacing.md),
              decoration: BoxDecoration(
                color: AppColors.card,
                borderRadius: BorderRadius.circular(AppRadius.md),
                border: Border.all(color: AppColors.border),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(AppRadius.sm),
                    child: CachedNetworkImage(
                      imageUrl: ticket.imageUrl,
                      width: 52,
                      height: 52,
                      fit: BoxFit.cover,
                      placeholder: (context, url) =>
                          Container(color: AppColors.muted),
                      errorWidget: (context, url, error) => Container(
                        color: AppColors.muted,
                        child: const Icon(Icons.error, size: 20),
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ticket.title,
                          style: AppTextStyles.body1.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 2),
                        Text(
                          ticket.date,
                          style: AppTextStyles.body2.copyWith(
                            color: AppColors.textSecondary,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 2),
                        Text(
                          ticket.ticketCount,
                          style: AppTextStyles.body2.copyWith(
                            color: AppColors.textTertiary,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.chevron_right,
                    color: AppColors.textSecondary,
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
