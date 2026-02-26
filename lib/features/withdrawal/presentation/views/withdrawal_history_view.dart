import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/entities/withdrawal_entity.dart';
import 'package:ticket_platform_mobile/features/withdrawal/presentation/viewmodels/withdrawal_history_viewmodel.dart';

class WithdrawalHistoryView extends ConsumerStatefulWidget {
  const WithdrawalHistoryView({super.key});

  @override
  ConsumerState<WithdrawalHistoryView> createState() =>
      _WithdrawalHistoryViewState();
}

class _WithdrawalHistoryViewState extends ConsumerState<WithdrawalHistoryView> {
  @override
  Widget build(BuildContext context) {
    final historyAsync = ref.watch(withdrawalHistoryViewModelProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('출금 내역')),
      body: historyAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text(error.toString())),
        data: (state) {
          if (state.items.isEmpty) {
            return const Center(child: Text('출금 내역이 없습니다.'));
          }

          final hasMore = state.items.length < state.totalCount;
          return RefreshIndicator(
            onRefresh: () =>
                ref.read(withdrawalHistoryViewModelProvider.notifier).refresh(),
            child: ListView.builder(
              padding: const EdgeInsets.all(AppSpacing.md),
              itemCount: state.items.length + (hasMore ? 1 : 0),
              itemBuilder: (context, index) {
                if (index >= state.items.length) {
                  ref
                      .read(withdrawalHistoryViewModelProvider.notifier)
                      .loadMore();
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: AppSpacing.md),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }

                final item = state.items[index];
                return _buildHistoryItem(context, item);
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildHistoryItem(BuildContext context, WithdrawalEntity item) {
    final badgeColor = _badgeColor(item.statusCode);
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.sm),
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(AppRadius.md),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  NumberFormatUtil.formatPrice(item.amount),
                  style: AppTextStyles.priceDisplay,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.sm,
                  vertical: AppSpacing.xs,
                ),
                decoration: BoxDecoration(
                  color: badgeColor.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(AppRadius.sm),
                ),
                child: Text(
                  item.statusName,
                  style: AppTextStyles.caption.copyWith(color: badgeColor),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            _formatDate(item.requestedAt),
            style: AppTextStyles.caption.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
          if (_isRequested(item.statusCode)) ...[
            const SizedBox(height: AppSpacing.sm),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () async {
                  final messenger = ScaffoldMessenger.of(context);
                  try {
                    await ref
                        .read(withdrawalHistoryViewModelProvider.notifier)
                        .cancelWithdrawal(item.id);
                    messenger.showSnackBar(
                      const SnackBar(content: Text('출금 요청을 취소했습니다.')),
                    );
                  } catch (e) {
                    messenger.showSnackBar(
                      SnackBar(content: Text(e.toString())),
                    );
                  }
                },
                child: Text(
                  '취소',
                  style: AppTextStyles.body2.copyWith(
                    color: AppColors.destructive,
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  bool _isRequested(String statusCode) {
    return statusCode.toUpperCase() == 'REQUESTED';
  }

  Color _badgeColor(String statusCode) {
    return switch (statusCode.toUpperCase()) {
      'REQUESTED' => AppColors.warning,
      'COMPLETED' => AppColors.success,
      'FAILED' => AppColors.destructive,
      'CANCELLED' => AppColors.textSecondary,
      _ => AppColors.info,
    };
  }

  String _formatDate(DateTime dateTime) {
    final local = dateTime.toLocal();
    final month = local.month.toString().padLeft(2, '0');
    final day = local.day.toString().padLeft(2, '0');
    final hour = local.hour.toString().padLeft(2, '0');
    final minute = local.minute.toString().padLeft(2, '0');
    return '${local.year}.$month.$day $hour:$minute';
  }
}
