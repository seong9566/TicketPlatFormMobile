import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';

class TicketDetailWarningSection extends StatelessWidget {
  const TicketDetailWarningSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF1F2), // Very light red
        borderRadius: BorderRadius.circular(AppRadius.lg),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.warning_rounded,
                color: Color(0xFFE11D48), // Rose 600
                size: 20,
              ),
              SizedBox(width: 8),
              Text(
                '주의사항',
                style: TextStyle(
                  color: Color(0xFFE11D48),
                  fontWeight: FontWeight.w900,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            '직거래 시 발생할 수 있는 사기에 유의하세요. 카카오톡 등 외부 메신저로 유도하는 경우 사기일 가능성이 높습니다. 플랫폼 내 결제 시스템을 이용해주세요.',
            style: TextStyle(
              color: Color(0xFFE11D48),
              fontSize: 13,
              height: 1.5,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
