import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

class TicketingListHeader extends StatelessWidget {
  final int count;
  final String sortBy;
  final VoidCallback onSortTap;

  const TicketingListHeader({
    super.key,
    required this.count,
    required this.sortBy,
    required this.onSortTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.md,
        AppSpacing.md,
        AppSpacing.md,
        0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_buildCountInfo(), _buildSortOption()],
      ),
    );
  }

  Widget _buildCountInfo() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '판매티켓 ',
            style: AppTextStyles.heading3.copyWith(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: '$count',
            style: AppTextStyles.heading3.copyWith(
              fontSize: 16,
              color: AppColors.success,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSortOption() {
    return InkWell(
      onTap: onSortTap,
      child: Row(
        children: [
          Text(
            sortBy,
            style: AppTextStyles.body2.copyWith(
              fontSize: 13,
              color: AppColors.textSecondary,
            ),
          ),
          const Icon(
            Icons.keyboard_arrow_down,
            size: 16,
            color: AppColors.textSecondary,
          ),
        ],
      ),
    );
  }
}
