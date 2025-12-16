import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

class RequestArtistCard extends StatelessWidget {
  const RequestArtistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.inputBackground,
        borderRadius: BorderRadius.circular(
          20,
        ), // Should ideally be in AppRadius if 20 exists, but md is 12, lg is 16.
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(AppRadius.md),
            decoration: const BoxDecoration(
              color: AppColors.card,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.person_add_alt_1,
              color: AppColors.primary,
              size: 32,
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            '찾으시는 아티스트가 없나요?',
            style: AppTextStyles.body1.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            '원하는 아티스트를 요청하면 티켓 등록 알림을 보내드려요.',
            textAlign: TextAlign.center,
            style: AppTextStyles.body2.copyWith(
              fontSize: 13, // slightly smaller
              color: AppColors.textSecondary,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.background,
                foregroundColor: AppColors.textPrimary,
                elevation: 0,
                side: const BorderSide(color: AppColors.border),
                padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppRadius.md),
                ),
              ),
              child: Text(
                '아티스트 요청하기',
                style: AppTextStyles.body2.copyWith(
                  fontWeight: FontWeight.bold,
                ), // Or body1? usually buttons are a bit bigger
              ),
            ),
          ),
        ],
      ),
    );
  }
}
