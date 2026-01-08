import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ticket_platform_mobile/features/home/presentation/ui_models/home_ui_model.dart';

class RecommendedEventList extends StatelessWidget {
  const RecommendedEventList({super.key, required this.events});

  final List<RecommendedEventUiModel> events;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: events
          .map(
            (event) => InkWell(
              onTap: () =>
                  context.push('${AppRouterPath.ticketing}/${event.eventId}'),
              child: Container(
                margin: const EdgeInsets.only(
                  bottom: AppSpacing.md,
                  left: AppSpacing.md,
                  right: AppSpacing.md,
                ),
                padding: const EdgeInsets.all(AppSpacing.md),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xFFF1F5F9)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.03),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: CachedNetworkImage(
                        imageUrl: event.imageUrl,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                        placeholder: (context, url) =>
                            Container(color: AppColors.muted),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                    const SizedBox(width: AppSpacing.md),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  event.title,
                                  style: AppTextStyles.body1.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Icon(
                                event.isWishedByMe
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: event.isWishedByMe
                                    ? Colors.red
                                    : const Color(0xFF94A3B8),
                                size: 20,
                              ),
                            ],
                          ),
                          const SizedBox(height: 2),
                          Text(
                            event.venue,
                            style: AppTextStyles.body2.copyWith(
                              color: const Color(0xFF94A3B8),
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_today_outlined,
                                size: 12,
                                color: Color(0xFF94A3B8),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                event.date,
                                style: AppTextStyles.caption.copyWith(
                                  color: const Color(0xFF64748B),
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 2),
                          const SizedBox(height: 2),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                event.discountLabel,
                                style: const TextStyle(
                                  color: Color(0xFFEF4444),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                event.displayPrice,
                                style: AppTextStyles.body1.copyWith(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16,
                                ),
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.confirmation_num_outlined,
                                    size: 14,
                                    color: Color(0xFF22C55E),
                                  ),
                                  const SizedBox(width: 2),
                                  Text(
                                    event.availableTicketLabel,
                                    style: AppTextStyles.caption.copyWith(
                                      color: const Color(0xFF22C55E),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
