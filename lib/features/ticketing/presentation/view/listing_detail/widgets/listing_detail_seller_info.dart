import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_ui_model.dart';

class ListingDetailSellerInfo extends StatelessWidget {
  final SellerUiModel seller;

  const ListingDetailSellerInfo({super.key, required this.seller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.md,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '판매자 정보',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: AppSpacing.md),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.md,
              vertical: AppSpacing.lg,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFF8FAFC),
              borderRadius: BorderRadius.circular(AppRadius.lg),
              border: Border.all(color: const Color(0xFFF1F5F9)),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.05),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage(seller.profileImageUrl),
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        seller.nickname,
                        style: AppTextStyles.heading3.copyWith(fontSize: 15),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '응답률 ${seller.responseRate}% | 거래 ${seller.transactionCount}건',
                        style: AppTextStyles.caption.copyWith(
                          color: AppColors.textTertiary,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text(
                          '${seller.mannerTemperature}°C',
                          style: TextStyle(
                            color: _getTemperatureColor(
                              seller.mannerTemperature,
                            ),
                            fontWeight: FontWeight.w900,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Icon(
                          _getTemperatureIcon(seller.mannerTemperature),
                          color: _getTemperatureColor(seller.mannerTemperature),
                          size: 22,
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Container(
                      width: 80,
                      height: 5,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE2E8F0),
                        borderRadius: BorderRadius.circular(2.5),
                      ),
                      child: FractionallySizedBox(
                        alignment: Alignment.centerLeft,
                        widthFactor: seller.mannerTemperature / 100,
                        child: Container(
                          decoration: BoxDecoration(
                            color: _getTemperatureColor(
                              seller.mannerTemperature,
                            ),
                            borderRadius: BorderRadius.circular(2.5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color _getTemperatureColor(double temp) {
    if (temp >= 90) return const Color(0xFF22C55E);
    if (temp >= 50) return const Color(0xFF3B82F6);
    return const Color(0xFFF97316);
  }

  IconData _getTemperatureIcon(double temp) {
    if (temp >= 90) return Icons.sentiment_very_satisfied;
    if (temp >= 50) return Icons.sentiment_satisfied_alt;
    return Icons.sentiment_neutral;
  }
}
