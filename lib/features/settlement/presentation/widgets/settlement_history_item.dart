import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/settlement/domain/entities/settlement_entity.dart';
import 'package:ticket_platform_mobile/features/settlement/presentation/widgets/settlement_status_badge.dart';

class SettlementHistoryItem extends StatelessWidget {
  final SettlementEntity settlement;
  final VoidCallback onTap;

  const SettlementHistoryItem({
    super.key,
    required this.settlement,
    required this.onTap,
  });

  String get _formattedAmount =>
      '${NumberFormat('#,###').format(settlement.netAmount)}원';

  String get _displayDate {
    final date = settlement.statusCode == 'completed'
        ? settlement.processedAt ?? settlement.scheduledAt
        : settlement.scheduledAt;
    return DateFormat('yyyy.MM.dd').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
          BoxShadow(
            color: AppColors.cardShadowTint,
            blurRadius: 24,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Material(
        color: AppColors.transparent,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.md),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        settlement.eventTitle ?? '이벤트 정보 없음',
                        style: AppTextStyles.ticketTitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: AppSpacing.xs),
                      Text(
                        _displayDate,
                        style: AppTextStyles.caption.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: AppSpacing.sm),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      _formattedAmount,
                      style: AppTextStyles.priceDisplay.copyWith(fontSize: 16),
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    SettlementStatusBadge(
                      statusCode: settlement.statusCode,
                      statusName: settlement.statusName,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
