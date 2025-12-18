import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:ticket_platform_mobile/features/home/presentation/ui_models/home_ui_model.dart';

class PopularTicketList extends StatelessWidget {
  const PopularTicketList({super.key, required this.tickets});

  final List<PopularTicketUiModel> tickets;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: tickets.length,
        separatorBuilder: (_, __) => const SizedBox(width: AppSpacing.md),
        itemBuilder: (context, index) {
          final ticket = tickets[index];
          return Container(
            width: 140,
            decoration: BoxDecoration(
              color: AppColors.muted,
              borderRadius: BorderRadius.circular(AppRadius.lg),
            ),
            padding: const EdgeInsets.all(AppSpacing.sm),
            margin: index == 0
                ? const EdgeInsets.only(left: AppSpacing.md)
                : null,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppRadius.md),
                    child: ticket.imageUrl != null
                        ? CachedNetworkImage(
                            imageUrl: ticket.imageUrl!,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            placeholder: (context, url) =>
                                Container(color: AppColors.borderHover),
                            errorWidget: (context, url, error) => Container(
                              color: AppColors.borderHover,
                              child: const Icon(Icons.error),
                            ),
                          )
                        : Container(
                            color: AppColors.borderHover,
                            child: const Center(
                              child: Icon(
                                Icons.image,
                                size: 40,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
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
                    fontSize: 12,
                    color: AppColors.textSecondary,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  ticket.price,
                  style: AppTextStyles.body2.copyWith(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
