import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

class TicketDetailTradeSection extends StatelessWidget {
  final String? tradeMethodName;

  const TicketDetailTradeSection({super.key, this.tradeMethodName});

  String _getTradeDescription(String methodName) {
    switch (methodName) {
      case 'PIN거래':
        return '핀번호를 통해 티켓을 전달하는 방식입니다.';
      case '배송거래':
        return '실물 티켓을 배송하는 방식입니다.';
      case '현장거래':
        return '현장에서 만나 직접 티켓을 전달받는 방식입니다.';
      case '기타':
      case '기타거래':
        return '판매자가 설명한 방식으로 거래가 진행됩니다.';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    if (tradeMethodName == null || tradeMethodName!.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionHeader('거래 방식'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTradeChip(tradeMethodName!),
              const SizedBox(height: AppSpacing.xs),
              Padding(
                padding: const EdgeInsets.only(left: AppSpacing.xs),
                child: Text(
                  _getTradeDescription(tradeMethodName!),
                  style: AppTextStyles.caption.copyWith(
                    color: AppColors.textSecondary,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.md,
        0,
        AppSpacing.md,
        AppSpacing.sm,
      ),
      child: Text(
        title,
        style: AppTextStyles.body1.copyWith(
          fontWeight: FontWeight.w800,
          color: AppColors.textPrimary,
        ),
      ),
    );
  }

  Widget _buildTradeChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: AppColors.secondary.withValues(alpha: 0.06),
        borderRadius: BorderRadius.circular(AppRadius.md),
        border: Border.all(
          color: AppColors.secondary.withValues(alpha: 0.15),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.swap_horizontal_circle_rounded,
            size: 16,
            color: AppColors.secondary,
          ),
          const SizedBox(width: AppSpacing.xs),
          Text(
            label,
            style: AppTextStyles.body2.copyWith(
              color: AppColors.secondary,
              fontWeight: FontWeight.w700,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
