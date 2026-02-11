import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/notification/presentation/ui_models/notification_ui_model.dart';

class NotificationItemWidget extends StatelessWidget {
  const NotificationItemWidget({
    super.key,
    required this.item,
    required this.onTap,
  });

  final NotificationUiModel item;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final icon = _resolveIcon(item.typeCode);
    final iconColor = _resolveIconColor(item.typeCode);

    return Material(
      color: item.isRead ? AppColors.background : AppColors.primaryLight,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: AppColors.muted,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(icon, size: 20, color: iconColor),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: AppTextStyles.body1.copyWith(
                        fontWeight: item.isRead
                            ? FontWeight.w500
                            : FontWeight.w700,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Text(
                      item.body,
                      style: AppTextStyles.body2.copyWith(
                        color: AppColors.textSecondary,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    Text(
                      item.timeText,
                      style: AppTextStyles.caption.copyWith(
                        color: AppColors.textTertiary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  IconData _resolveIcon(String typeCode) {
    switch (typeCode.toUpperCase()) {
      case 'CHAT_MESSAGE':
        return Icons.chat_bubble_outline;
      case 'PAYMENT_REQUEST':
        return Icons.payments_outlined;
      case 'PAYMENT_SUCCESS':
        return Icons.check_circle_outline;
      case 'PURCHASE_CONFIRMED':
        return Icons.shopping_bag_outlined;
      case 'DISPUTE_OPENED':
      case 'DISPUTE_RESOLVED':
        return Icons.report_outlined;
      default:
        return Icons.notifications_outlined;
    }
  }

  Color _resolveIconColor(String typeCode) {
    switch (typeCode.toUpperCase()) {
      case 'CHAT_MESSAGE':
        return AppColors.info;
      case 'PAYMENT_REQUEST':
        return AppColors.warning;
      case 'PAYMENT_SUCCESS':
      case 'PURCHASE_CONFIRMED':
        return AppColors.success;
      case 'DISPUTE_OPENED':
      case 'DISPUTE_RESOLVED':
        return AppColors.destructive;
      default:
        return AppColors.textSecondary;
    }
  }
}
