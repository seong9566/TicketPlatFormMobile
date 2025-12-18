import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/event/presentation/viewmodels/event_state.dart';

class EventSessionListTile extends StatelessWidget {
  final EventSessionUiModel session;

  const EventSessionListTile({super.key, required this.session});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push('${AppRouterPath.eventSessions}/${session.id}');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Row(
          children: [
            // Avatar Image
            Stack(
              children: [
                ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: session.imageUrl,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        Container(color: AppColors.muted),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.person),
                  ),
                ),
                if (session.isNew)
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(
                          10,
                        ), // Custom small radius
                        border: Border.all(
                          color: AppColors.background,
                          width: 2,
                        ),
                      ),
                      child: Text(
                        'NEW',
                        style: AppTextStyles.body2.copyWith(
                          color: AppColors.primaryForeground,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(width: AppSpacing.md),
            // Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    session.description,
                    style: AppTextStyles.body1.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  Text(
                    session.eventTitle,
                    style: AppTextStyles.body2,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),

            const Icon(Icons.chevron_right, color: AppColors.textTertiary),
          ],
        ),
      ),
    );
  }
}
