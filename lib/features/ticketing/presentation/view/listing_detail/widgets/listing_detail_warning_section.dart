import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

class ListingDetailWarningSection extends StatelessWidget {
  const ListingDetailWarningSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: 12,
      ),

      decoration: BoxDecoration(
        color: const Color(0xFFFFF1F2),
        borderRadius: BorderRadius.circular(AppRadius.lg),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.warning, color: Color(0xFFE11D48), size: 18),
              const SizedBox(width: 8),
              Text(
                '주의사항',
                style: AppTextStyles.body2.copyWith(
                  color: const Color(0xFFE11D48),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            '직거래 시 발생할 수 있는 사기에 유의하세요. 카카오톡 등 외부 메신저로 유도하는 경우 사기일 가능성이 높습니다. 플랫폼 내 결제 시스템을 이용해주세요.',
            style: AppTextStyles.caption.copyWith(
              color: const Color(0xFFE11D48),
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
