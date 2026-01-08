import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';

class TicketDetailTransactionFeatures extends StatelessWidget {
  final List<String> features;

  const TicketDetailTransactionFeatures({super.key, required this.features});

  @override
  Widget build(BuildContext context) {
    final activeColor = const Color(0xFF22C55E);

    Widget buildFeatureItem(IconData icon, String label) {
      final isAvailable = features.contains(label);
      return Expanded(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          decoration: BoxDecoration(
            color: isAvailable
                ? activeColor.withValues(alpha: 0.03)
                : Colors.white,
            border: Border.all(
              color: isAvailable
                  ? activeColor.withValues(alpha: 0.2)
                  : const Color(0xFFF1F5F9),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 18,
                color: isAvailable ? activeColor : const Color(0xFF94A3B8),
              ),
              const SizedBox(width: 8),
              Flexible(
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: isAvailable
                        ? FontWeight.w600
                        : FontWeight.normal,
                    color: isAvailable ? Colors.black : const Color(0xFF94A3B8),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget buildFullWidthFeatureItem(IconData icon, String label) {
      final isAvailable = features.contains(label);
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        decoration: BoxDecoration(
          color: isAvailable
              ? activeColor.withValues(alpha: 0.03)
              : Colors.white,
          border: Border.all(
            color: isAvailable
                ? activeColor.withValues(alpha: 0.2)
                : const Color(0xFFF1F5F9),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 18,
              color: isAvailable ? activeColor : const Color(0xFF94A3B8),
            ),
            const SizedBox(width: 8),
            Flexible(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: isAvailable ? FontWeight.w600 : FontWeight.normal,
                  color: isAvailable ? Colors.black : const Color(0xFF94A3B8),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              buildFeatureItem(Icons.verified_user_outlined, '안심결제 가능'),
              const SizedBox(width: 10),
              buildFeatureItem(Icons.assignment_outlined, '예매 내역서'),
            ],
          ),
          const SizedBox(height: 10),
          buildFullWidthFeatureItem(Icons.chair_alt_outlined, '연석 보유'),
        ],
      ),
    );
  }
}
