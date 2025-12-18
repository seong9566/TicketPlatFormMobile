import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';

class ListingDetailTransactionFeatures extends StatelessWidget {
  final List<String> features;

  const ListingDetailTransactionFeatures({super.key, required this.features});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),

        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 3.5,
        ),
        itemCount: 4, // From image
        itemBuilder: (context, index) {
          final items = [
            {'icon': Icons.local_shipping_outlined, 'label': '배송지 변경'},
            {'icon': Icons.verified_user_outlined, 'label': '안심결제 가능'},
            {'icon': Icons.assignment_outlined, 'label': '예매 내역서'},
            {'icon': Icons.chair_alt_outlined, 'label': '연석 보유'},
          ];
          final item = items[index];
          final label = item['label'] as String;
          final isAvailable = features.contains(label);
          final activeColor = const Color(0xFF22C55E);

          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
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
              children: [
                Icon(
                  item['icon'] as IconData,
                  size: 18,
                  color: isAvailable ? activeColor : const Color(0xFF94A3B8),
                ),
                const SizedBox(width: 8),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: isAvailable
                        ? FontWeight.w600
                        : FontWeight.normal,
                    color: isAvailable ? Colors.black : const Color(0xFF94A3B8),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
