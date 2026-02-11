import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

class NotificationBadgeWidget extends StatelessWidget {
  const NotificationBadgeWidget({
    super.key,
    required this.count,
    this.small = false,
  });

  final int count;
  final bool small;

  @override
  Widget build(BuildContext context) {
    if (count <= 0) {
      return const SizedBox.shrink();
    }

    final text = count > 99 ? '99+' : '$count';
    final verticalPadding = small ? 1.0 : 2.0;
    final horizontalPadding = small ? 4.0 : 5.0;
    final minSize = small ? 14.0 : 16.0;

    return Container(
      constraints: BoxConstraints(minWidth: minSize, minHeight: minSize),
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      decoration: BoxDecoration(
        color: AppColors.destructive,
        borderRadius: BorderRadius.circular(999),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: AppTextStyles.caption.copyWith(
          color: Colors.white,
          fontSize: small ? 9 : 10,
          fontWeight: FontWeight.w700,
          height: 1.0,
        ),
      ),
    );
  }
}
