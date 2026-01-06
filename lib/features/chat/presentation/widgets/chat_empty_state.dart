import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

class ChatEmptyState extends StatelessWidget {
  const ChatEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: AppColors.chatEmptyIconBackground,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.chat_bubble_outline,
              size: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            '아직 대화가 없습니다.',
            style: AppTextStyles.heading3.copyWith(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '관심있는 티켓에 대해 판매자와 대화를 시작해보세요!',
            style: AppTextStyles.body2.copyWith(color: AppColors.textSecondary),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
