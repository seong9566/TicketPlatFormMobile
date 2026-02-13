import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/dispute/presentation/viewmodels/dispute_list_viewmodel.dart';
import 'package:ticket_platform_mobile/features/dispute/presentation/widgets/dispute_item_widget.dart';

class DisputeListView extends ConsumerWidget {
  const DisputeListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateAsync = ref.watch(disputeListViewModelProvider);

    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
        title: const Text('내 신고 내역'),
        backgroundColor: Colors.white,
      ),
      body: stateAsync.when(
        data: (state) {
          if (state.items.isEmpty) {
            return const Center(child: Text('신고 내역이 없습니다.'));
          }

          return RefreshIndicator(
            onRefresh: () =>
                ref.read(disputeListViewModelProvider.notifier).refresh(),
            child: ListView.builder(
              padding: const EdgeInsets.all(AppSpacing.md),
              itemCount: state.items.length + (state.hasMore ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == state.items.length) {
                  ref.read(disputeListViewModelProvider.notifier).loadMore();
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }

                final item = state.items[index];
                return DisputeItemWidget(
                  item: item,
                  onTap: () {
                    context.pushNamed(
                      AppRouterPath.disputeDetail.name,
                      pathParameters: {'id': item.id.toString()},
                    );
                  },
                );
              },
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('신고 내역을 불러오지 못했습니다.', style: AppTextStyles.body1),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  '$error',
                  style: AppTextStyles.caption.copyWith(
                    color: AppColors.textSecondary,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
