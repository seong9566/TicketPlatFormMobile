import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';

class StarRatingWidget extends StatelessWidget {
  const StarRatingWidget({
    super.key,
    required this.currentScore,
    required this.onScoreSelected,
  });

  final int currentScore;
  final ValueChanged<int> onScoreSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        final score = index + 1;
        final isSelected = score <= currentScore;
        return IconButton(
          onPressed: () => onScoreSelected(score),
          icon: Icon(
            isSelected ? Icons.star_rounded : Icons.star_border_rounded,
            color: isSelected ? AppColors.starYellow : AppColors.textTertiary,
            size: 36,
          ),
        );
      }),
    );
  }
}
