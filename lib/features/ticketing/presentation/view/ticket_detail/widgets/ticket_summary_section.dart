import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/utils/date_format_util.dart';
import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_ticket_detail_ui_model.dart';

class TicketSummarySection extends StatelessWidget {
  final TicketingTicketDetailUiModel detail;

  const TicketSummarySection({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    final dateStr = detail.performanceDate != null
        ? DateFormatUtil.formatWithDay(detail.performanceDate!)
        : '일정 미정';

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.inputBackground,
        borderRadius: BorderRadius.circular(AppRadius.lg),
        border: Border.all(color: AppColors.border.withValues(alpha: 0.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSummaryRow('공연', detail.performanceTitle ?? ''),
          const SizedBox(height: AppSpacing.sm),
          _buildSummaryRow('일시', dateStr),
          const SizedBox(height: AppSpacing.sm),
          _buildSummaryRow(
            '좌석',
            '${detail.gradeName} ${detail.seatInfo ?? ""}',
          ),
          const SizedBox(height: AppSpacing.sm),
          _buildSummaryRow('수량', detail.ticketCountInfo),
          const SizedBox(height: AppSpacing.sm),
          _buildSummaryRow(
            '1장당 가격',
            '${NumberFormatUtil.formatNumber(detail.price)}원',
            valueColor: AppColors.textSecondary,
          ),
          const SizedBox(height: AppSpacing.sm),
          _buildSummaryRow(
            '총 가격',
            '${NumberFormatUtil.formatNumber(detail.totalPrice)}원',
            valueColor: AppColors.textPrimary,
            isBold: true,
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryRow(
    String label,
    String value, {
    Color? valueColor,
    bool isBold = false,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 60,
          child: Text(
            label,
            style: AppTextStyles.body2.copyWith(color: AppColors.textSecondary),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: AppTextStyles.body2.copyWith(
              color: valueColor ?? AppColors.textPrimary,
              fontWeight: isBold ? FontWeight.bold : FontWeight.w500,
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
