import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

class SettlementStatusBadge extends StatelessWidget {
  final String statusCode;
  final String statusName;

  const SettlementStatusBadge({
    super.key,
    required this.statusCode,
    required this.statusName,
  });

  Color get _statusColor {
    switch (statusCode) {
      case 'pending':
        return AppColors.warning;
      case 'processing':
        return AppColors.info;
      case 'completed':
        return AppColors.success;
      case 'failed':
        return AppColors.error;
      case 'on_hold':
      default:
        return AppColors.textSecondary;
    }
  }

  bool get _showAccountNote => statusCode == 'on_hold';

  @override
  Widget build(BuildContext context) {
    final color = _statusColor;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.sm,
            vertical: AppSpacing.xs,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withValues(alpha: 0.18),
                color.withValues(alpha: 0.10),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: color.withValues(alpha: 0.35), width: 1),
          ),
          child: Text(
            statusName,
            style: AppTextStyles.caption.copyWith(
              color: color,
              fontWeight: FontWeight.w700,
              fontSize: 11,
              letterSpacing: 0.2,
            ),
          ),
        ),
        if (_showAccountNote) ...[
          const SizedBox(height: AppSpacing.xs),
          Text(
            '계좌 등록 필요',
            style: AppTextStyles.caption.copyWith(
              color: AppColors.textSecondary,
              fontSize: 10,
            ),
          ),
        ],
      ],
    );
  }
}
