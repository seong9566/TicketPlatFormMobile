import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

class PaymentFailureWidget extends StatefulWidget {
  final String errorMessage;
  final String errorCode;

  const PaymentFailureWidget({
    super.key,
    required this.errorMessage,
    required this.errorCode,
  });

  @override
  State<PaymentFailureWidget> createState() => _PaymentFailureWidgetState();
}

class _PaymentFailureWidgetState extends State<PaymentFailureWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _scaleAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut,
    );

    _opacityAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.xl),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          // Custom Animated Error Icon
          ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: AppColors.destructive.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    color: AppColors.destructive,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.close_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
          FadeTransition(
            opacity: _opacityAnimation,
            child: Column(
              children: [
                Text(
                  '결제에 실패했습니다',
                  style: AppTextStyles.heading2,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  '결제 처리 중 문제가 발생했습니다.\n다시 시도해 주세요.',
                  style: AppTextStyles.body1.copyWith(
                    color: AppColors.textSecondary,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(height: 48),

          // Error Details Card
          // FadeTransition(
          //   opacity: _opacityAnimation,
          //   child: Container(
          //     padding: const EdgeInsets.all(AppSpacing.lg),
          //     decoration: BoxDecoration(
          //       color: AppColors.gray50,
          //       borderRadius: BorderRadius.circular(16),
          //     ),
          //     child: Column(
          //       children: [
          //         _buildDetailRow(
          //           '오류 코드',
          //           widget.errorCode,
          //           valueColor: AppColors.destructive,
          //           isBold: true,
          //         ),
          //         const SizedBox(height: AppSpacing.md),
          //         _buildDetailRow(
          //           '사유',
          //           widget.errorMessage.isNotEmpty
          //               ? widget.errorMessage
          //               : '알 수 없는 오류가 발생했습니다.',
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          const Spacer(),

          // Buttons
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                context.pop(); // 이전 화면(결제 화면)으로 복귀
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.textPrimary,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                '다시 시도하기',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                context.goNamed(AppRouterPath.home.name);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.gray100,
                foregroundColor: AppColors.textPrimary,
                padding: const EdgeInsets.symmetric(vertical: 16),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                '홈으로 돌아가기',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
