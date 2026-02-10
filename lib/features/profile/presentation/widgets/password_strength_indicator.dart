import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

/// 비밀번호 강도 표시 위젯
/// [strength]: 0-3 (0: 없음, 1: 약함, 2: 보통, 3: 강함)
class PasswordStrengthIndicator extends StatelessWidget {
  final int strength;

  const PasswordStrengthIndicator({super.key, required this.strength});

  @override
  Widget build(BuildContext context) {
    if (strength == 0) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: AppSpacing.sm),
        Row(
          children: [
            Expanded(child: _buildBar(0)),
            const SizedBox(width: AppSpacing.xs),
            Expanded(child: _buildBar(1)),
            const SizedBox(width: AppSpacing.xs),
            Expanded(child: _buildBar(2)),
          ],
        ),
        const SizedBox(height: AppSpacing.sm),
        Text(
          _strengthText,
          style: AppTextStyles.caption.copyWith(color: _strengthColor),
        ),
      ],
    );
  }

  Widget _buildBar(int index) {
    final isActive = index < strength;
    return Container(
      height: 4.0,
      decoration: BoxDecoration(
        color: isActive ? _strengthColor : AppColors.border,
        borderRadius: BorderRadius.circular(2.0),
      ),
    );
  }

  String get _strengthText {
    switch (strength) {
      case 1:
        return '약함';
      case 2:
        return '보통';
      case 3:
        return '강함';
      default:
        return '';
    }
  }

  Color get _strengthColor {
    switch (strength) {
      case 1:
        return AppColors.destructive;
      case 2:
        return AppColors.warning;
      case 3:
        return AppColors.success;
      default:
        return AppColors.border;
    }
  }
}
