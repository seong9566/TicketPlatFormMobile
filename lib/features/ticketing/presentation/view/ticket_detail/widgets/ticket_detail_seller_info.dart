import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_ticket_ui_model.dart';

class TicketDetailSellerInfo extends StatelessWidget {
  final TicketingSellerUiModel seller;

  const TicketDetailSellerInfo({super.key, required this.seller});

  @override
  Widget build(BuildContext context) {
    final tradeCount = seller.totalTradeCount;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg),
          child: Text(
            '판매자 정보',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
          padding: const EdgeInsets.all(AppSpacing.lg),
          decoration: BoxDecoration(
            color: const Color(0xFFF8FAFC),
            borderRadius: BorderRadius.circular(AppRadius.lg),
          ),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  image: (seller.profileImageUrl ?? '').isNotEmpty
                      ? DecorationImage(
                          image: NetworkImage(seller.profileImageUrl!),
                          fit: BoxFit.cover,
                        )
                      : null,
                  color: (seller.profileImageUrl ?? '').isEmpty
                      ? AppColors
                            .textTertiary // Fallback color
                      : null,
                  shape: BoxShape.circle,
                ),
                // 이미지가 없을 때만 텍스트 표시
                child: (seller.profileImageUrl ?? '').isEmpty
                    ? Center(
                        child: Text(
                          seller.nickname.isNotEmpty ? seller.nickname[0] : '?',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    : null,
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      seller.nickname, // 판매자 닉네임
                      style: AppTextStyles.body2.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '거래 $tradeCount회', // 거래 횟수만 표시 (이미지 기준)
                      style: AppTextStyles.caption.copyWith(
                        color: AppColors.textSecondary,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              // 매너온도 (아이콘 + 텍스트)
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.thermostat_outlined,
                    color: AppColors.success,
                    size: 18,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '${seller.mannerTemperature.toStringAsFixed(1)}°C',
                    style: const TextStyle(
                      color: AppColors.success,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
