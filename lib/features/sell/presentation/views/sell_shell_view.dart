import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/widgets/sell_step_indicator.dart';

// 티켓 판매 루트 View
class SellShellView extends StatelessWidget {
  final Widget child;
  final GoRouterState state;

  const SellShellView({super.key, required this.child, required this.state});

  @override
  Widget build(BuildContext context) {
    final currentPath = state.uri.path;

    int getStepFromPath(String path) {
      if (path.contains(AppRouterPath.sellTicketCategory.path)) return 1;
      if (path.contains(AppRouterPath.sellEventSelection.path)) return 2;
      if (path.contains(AppRouterPath.sellDateTimeSelection.path)) return 3;
      if (path.contains(AppRouterPath.sellSeatInfo.path)) return 4;
      if (path.contains(AppRouterPath.sellPrice.path)) return 5;
      if (path.contains(AppRouterPath.sellAdditionalInfo.path)) return 6;
      return 1;
    }

    String getTitleFromPath(GoRouterState state) {
      final path = state.uri.path;

      if (path.contains(AppRouterPath.sellTicketCategory.path)) return '티켓 판매';
      if (path.contains(AppRouterPath.sellEventSelection.path)) return '공연 선택';
      if (path.contains(AppRouterPath.sellDateTimeSelection.path)) {
        return state.uri.queryParameters['eventTitle'] ?? '일정 선택';
      }
      if (path.contains(AppRouterPath.sellSeatInfo.path)) return '좌석 정보';
      if (path.contains(AppRouterPath.sellPrice.path)) return '가격 설정';
      if (path.contains(AppRouterPath.sellAdditionalInfo.path)) return '추가 정보';

      return '티켓 판매';
    }

    final int step = getStepFromPath(currentPath);
    final String title = getTitleFromPath(state);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.go(AppRouterPath.home.path);
            }
          },
        ),
        title: Text(
          title,
          style: AppTextStyles.heading3.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
            child: SellStepIndicator(currentStep: step, totalSteps: 6),
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
