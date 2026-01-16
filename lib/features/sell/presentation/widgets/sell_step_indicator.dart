import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

class SellStepIndicator extends StatelessWidget {
  final int currentStep;
  final int totalSteps;

  const SellStepIndicator({
    super.key,
    required this.currentStep,
    this.totalSteps = 6,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(2),
          child: TweenAnimationBuilder<double>(
            tween: Tween<double>(
              begin: (currentStep - 1) / totalSteps,
              end: currentStep / totalSteps,
            ),
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            builder: (context, value, _) {
              return LinearProgressIndicator(
                value: value,
                backgroundColor: AppColors.border,
                color: AppColors.primary,
                minHeight: 4,
              );
            },
          ),
        ),
        const SizedBox(height: AppSpacing.xs),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '$currentStep',
                style: AppTextStyles.body2.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: ' / $totalSteps단계',
                style: AppTextStyles.body2.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
