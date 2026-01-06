import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:ticket_platform_mobile/features/home/presentation/ui_models/home_ui_model.dart';

class PopularTicketList extends StatelessWidget {
  const PopularTicketList({super.key, required this.tickets});

  final List<PopularTicketUiModel> tickets;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: 4,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: tickets.asMap().entries.map((entry) {
          final index = entry.key;
          final ticket = entry.value;
          final isLast = index == tickets.length - 1;

          return Container(
            width: 180,
            margin: EdgeInsets.only(right: isLast ? 0 : AppSpacing.md),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: const Color(0xFFF1F5F9)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: ticket.imageUrl != null
                      ? CachedNetworkImage(
                          imageUrl: ticket.imageUrl!,
                          fit: BoxFit.cover,
                          placeholder: (context, url) =>
                              Container(color: AppColors.muted),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        )
                      : Container(color: AppColors.muted),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ticket.title,
                        style: AppTextStyles.body1.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        ticket.eventTitle ?? 'Artist name',
                        style: AppTextStyles.body2.copyWith(
                          color: const Color(0xFF94A3B8),
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(
                            Icons.calendar_today_outlined,
                            size: 14,
                            color: Color(0xFF94A3B8),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            ticket.date,
                            style: AppTextStyles.caption.copyWith(
                              color: const Color(0xFF64748B),
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
                            color: Color(0xFF94A3B8),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '서울 올림픽 경기장',
                            style: AppTextStyles.caption.copyWith(
                              color: const Color(0xFF64748B),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Text(
                            '-8%',
                            style: TextStyle(
                              color: Color(0xFFEF4444),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            ticket.price,
                            style: AppTextStyles.body1.copyWith(
                              fontWeight: FontWeight.w900,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(
                            Icons.confirmation_num_outlined,
                            size: 16,
                            color: Color(0xFF22C55E),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '23장 판매중',
                            style: AppTextStyles.caption.copyWith(
                              color: const Color(0xFF22C55E),
                              fontWeight: FontWeight.w600,
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
        }).toList(),
      ),
    );
  }
}
