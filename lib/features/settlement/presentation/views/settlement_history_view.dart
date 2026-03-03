import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';
import 'package:ticket_platform_mobile/features/settlement/domain/entities/settlement_entity.dart';
import 'package:ticket_platform_mobile/features/settlement/presentation/viewmodels/settlement_history_viewmodel.dart';
import 'package:ticket_platform_mobile/features/settlement/presentation/widgets/settlement_history_item.dart';

class SettlementHistoryView extends StatelessWidget {
  const SettlementHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.scaffoldGradientStart,
              AppColors.scaffoldGradientEnd,
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: AppColors.transparent,
          appBar: AppBar(
            backgroundColor: AppColors.background,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: AppColors.textPrimary),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: const Text('정산 내역', style: AppTextStyles.body1),
            centerTitle: true,
          ),
          body: const _SettlementHistoryBody(),
        ),
      ),
    );
  }
}

class _SettlementHistoryBody extends ConsumerStatefulWidget {
  const _SettlementHistoryBody();

  @override
  ConsumerState<_SettlementHistoryBody> createState() =>
      _SettlementHistoryBodyState();
}

class _SettlementHistoryBodyState
    extends ConsumerState<_SettlementHistoryBody> {
  final ScrollController _scrollController = ScrollController();

  static const List<_FilterChipData> _filterChips = [
    _FilterChipData(label: '전체', status: null),
    _FilterChipData(label: '대기', status: 'pending'),
    _FilterChipData(label: '완료', status: 'completed'),
    _FilterChipData(label: '실패', status: 'failed'),
  ];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(settlementHistoryViewModelProvider.notifier).loadMore();
    }
  }

  Future<void> _refresh() {
    return ref.read(settlementHistoryViewModelProvider.notifier).refresh();
  }

  void _onFilterTap(String? status) {
    ref
        .read(settlementHistoryViewModelProvider.notifier)
        .filterByStatus(status);
  }

  void _onItemTap(SettlementEntity settlement) {
    context.goNamed(
      AppRouterPath.settlementDetail.name,
      pathParameters: {'id': settlement.id.toString()},
    );
  }

  Widget _buildSummaryCard(int totalNetAmount) {
    return Container(
      margin: const EdgeInsets.fromLTRB(
        AppSpacing.lg,
        AppSpacing.md,
        AppSpacing.lg,
        0,
      ),
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.primary.withValues(alpha: 0.12),
            AppColors.primary.withValues(alpha: 0.06),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.primary.withValues(alpha: 0.25)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(AppSpacing.sm),
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.account_balance_wallet_outlined,
              color: AppColors.primary,
              size: 22,
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '정산 완료 총액',
                  style: AppTextStyles.caption.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  NumberFormatUtil.formatPrice(totalNetAmount),
                  style: AppTextStyles.priceDisplay.copyWith(
                    color: AppColors.primary,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChips(String? selectedStatus) {
    return Container(
      color: AppColors.background,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.sm,
      ),
      child: Row(
        children: _filterChips.map((chip) {
          final isSelected = chip.status == selectedStatus;
          return Padding(
            padding: const EdgeInsets.only(right: AppSpacing.sm),
            child: _FilterChip(
              label: chip.label,
              isSelected: isSelected,
              onTap: () => _onFilterTap(chip.status),
            ),
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(settlementHistoryViewModelProvider);

    return state.when(
      data: (data) {
        return Column(
          children: [
            _buildSummaryCard(data.totalNetAmount),
            const SizedBox(height: AppSpacing.md),
            _buildFilterChips(data.selectedStatus),
            const Divider(height: 1, color: AppColors.border),
            Expanded(
              child: data.settlements.isEmpty
                  ? _buildEmptyState()
                  : RefreshIndicator(
                      onRefresh: _refresh,
                      child: ListView.separated(
                        controller: _scrollController,
                        padding: EdgeInsets.only(
                          left: AppSpacing.lg,
                          right: AppSpacing.lg,
                          top: AppSpacing.md,
                          bottom:
                              AppSpacing.md +
                              MediaQuery.of(context).padding.bottom,
                        ),
                        itemCount:
                            data.settlements.length +
                            (data.isLoadingMore ? 1 : 0),
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: AppSpacing.sm),
                        itemBuilder: (context, index) {
                          if (index == data.settlements.length) {
                            return const Center(
                              child: Padding(
                                padding: EdgeInsets.all(AppSpacing.md),
                                child: CircularProgressIndicator(
                                  color: AppColors.primary,
                                ),
                              ),
                            );
                          }
                          final settlement = data.settlements[index];
                          return TweenAnimationBuilder<double>(
                            tween: Tween(begin: 0.0, end: 1.0),
                            duration: Duration(
                              milliseconds: 300 + (index * 40),
                            ),
                            curve: Curves.easeOut,
                            builder: (context, value, child) {
                              return Opacity(
                                opacity: value,
                                child: Transform.translate(
                                  offset: Offset(0, 20 * (1 - value)),
                                  child: child,
                                ),
                              );
                            },
                            child: SettlementHistoryItem(
                              settlement: settlement,
                              onTap: () => _onItemTap(settlement),
                            ),
                          );
                        },
                      ),
                    ),
            ),
          ],
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(color: AppColors.primary),
      ),
      error: (error, stack) {
        String errorMessage = '데이터를 불러오는데 실패했습니다.';
        if (error.toString().contains('Exception:')) {
          errorMessage = error.toString().replaceFirst('Exception:', '').trim();
        } else if (error.toString().contains('NetworkFailure')) {
          errorMessage = '네트워크 연결을 확인해주세요.';
        } else if (error.toString().contains('UnauthorizedFailure')) {
          errorMessage = '로그인이 필요합니다.';
        }

        return Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.error_outline,
                  size: 48,
                  color: AppColors.error,
                ),
                const SizedBox(height: AppSpacing.md),
                Text(
                  errorMessage,
                  style: AppTextStyles.body2.copyWith(
                    color: AppColors.textSecondary,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSpacing.sm),
                TextButton(onPressed: _refresh, child: const Text('다시 시도')),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.receipt_long_outlined,
            size: 48,
            color: AppColors.textDisabled,
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            '정산 내역이 없습니다.',
            style: AppTextStyles.body2.copyWith(color: AppColors.textSecondary),
          ),
        ],
      ),
    );
  }
}

class _FilterChipData {
  final String label;
  final String? status;

  const _FilterChipData({required this.label, required this.status});
}

class _FilterChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _FilterChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.xs,
        ),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : AppColors.muted,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.border,
          ),
        ),
        child: Text(
          label,
          style: AppTextStyles.caption.copyWith(
            color: isSelected
                ? AppColors.primaryForeground
                : AppColors.textSecondary,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
