import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

class AppToggle extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final String label;
  final Color? activeColor;

  const AppToggle({
    super.key,
    required this.value,
    required this.onChanged,
    required this.label,
    this.activeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: AppTextStyles.body1.copyWith(color: AppColors.textPrimary),
        ),
        Switch(
          value: value,
          onChanged: onChanged,
          thumbColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return activeColor ?? AppColors.primary;
            }
            return Colors.white;
          }),
          trackColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return (activeColor ?? AppColors.primary).withValues(alpha: 0.5);
            }
            return AppColors.border;
          }),
          trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
        ),
      ],
    );
  }
}
