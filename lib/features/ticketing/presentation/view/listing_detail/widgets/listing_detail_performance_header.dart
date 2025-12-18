import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_ui_model.dart';

class ListingDetailPerformanceHeader extends StatelessWidget {
  final TicketingUiModel info;

  const ListingDetailPerformanceHeader({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: 12, // Reduced from AppSpacing.md (16px)
      ),

      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppRadius.md),
              border: Border.all(color: const Color(0xFFF1F5F9)),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppRadius.md - 1),
              child: Image.network(
                info.imageUrl,
                width: 72,
                height: 72,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  info.title,
                  style: AppTextStyles.heading3.copyWith(
                    fontSize: 16,
                    letterSpacing: -0.3,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_today_outlined,
                      size: 13,
                      color: AppColors.textTertiary,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      DateFormat(
                        'yyyy.MM.dd(E) HH:mm',
                        'ko',
                      ).format(info.eventDate),
                      style: AppTextStyles.caption.copyWith(
                        color: AppColors.textTertiary,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 13,
                      color: AppColors.textTertiary,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      info.location,
                      style: AppTextStyles.caption.copyWith(
                        color: AppColors.textTertiary,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
