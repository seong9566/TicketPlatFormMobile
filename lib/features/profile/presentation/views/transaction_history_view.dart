import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/viewmodels/transaction_history_viewmodel.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/widgets/transaction_history_item.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/widgets/transaction_filter_bottom_sheet.dart';

class TransactionHistoryView extends StatelessWidget {
  final int initialIndex;

  const TransactionHistoryView({super.key, this.initialIndex = 0});

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
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: AppColors.background,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: AppColors.textPrimary),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: const Text('거래 내역', style: AppTextStyles.body1),
            centerTitle: true,
          ),
          body: const TransactionHistoryList(type: TransactionType.purchases),
        ),
      ),
    );
  }
}

class TransactionHistoryList extends ConsumerStatefulWidget {
  final TransactionType type;

  const TransactionHistoryList({super.key, required this.type});

  @override
  ConsumerState<TransactionHistoryList> createState() =>
      _TransactionHistoryListState();
}

class _TransactionHistoryListState
    extends ConsumerState<TransactionHistoryList> {
  final ScrollController _scrollController = ScrollController();

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
      ref
          .read(transactionHistoryViewModelProvider(widget.type).notifier)
          .loadMore();
    }
  }

  Future<void> _refresh() async {
    return ref
        .read(transactionHistoryViewModelProvider(widget.type).notifier)
        .refresh();
  }

  /// 필터 버튼 (상단 바)
  Widget _buildFilterButton(
    BuildContext context,
    TransactionHistoryState data,
  ) {
    // 현재 활성화된 필터 개수 계산
    int activeFilterCount = 0;
    if (data.selectedStatus != null) activeFilterCount++;
    if (data.selectedPeriod != 'all') activeFilterCount++;
    if (data.selectedSort != 'latest') activeFilterCount++;

    // 필터 요약 텍스트
    String filterSummary = '필터';
    if (activeFilterCount > 0) {
      filterSummary += ' · $activeFilterCount개';
    }

    return Container(
      color: AppColors.background,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.md,
      ),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton.icon(
              onPressed: () => _showFilterBottomSheet(context, data),
              icon: const Icon(Icons.tune, size: 20),
              label: Text(filterSummary),
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.textPrimary,
                side: const BorderSide(color: AppColors.border),
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.md,
                  vertical: AppSpacing.sm,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 필터 BottomSheet 표시 및 결과 처리
  Future<void> _showFilterBottomSheet(
    BuildContext context,
    TransactionHistoryState currentState,
  ) async {
    final result = await TransactionFilterBottomSheet.show(
      context,
      selectedStatus: currentState.selectedStatus,
      selectedPeriod: currentState.selectedPeriod,
      selectedSort: currentState.selectedSort,
    );

    if (result != null) {
      ref
          .read(transactionHistoryViewModelProvider(widget.type).notifier)
          .applyFilter(
            status: result['status'] as String?,
            period: result['period'] as String,
            sortBy: result['sortBy'] as String,
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(transactionHistoryViewModelProvider(widget.type));

    return state.when(
      data: (data) {
        if (data.items.isEmpty) {
          return Column(
            children: [
              _buildFilterButton(context, data),
              const Divider(height: 1, color: AppColors.border),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.receipt_long_outlined,
                        size: 48,
                        color: AppColors.textDisabled,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        '구매 내역이 없습니다.',
                        style: AppTextStyles.body2.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }

        return Column(
          children: [
            _buildFilterButton(context, data),
            const Divider(height: 1, color: AppColors.border),
            Expanded(
              child: RefreshIndicator(
                onRefresh: _refresh,
                child: ListView.separated(
                  controller: _scrollController,
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 16,
                    bottom: 16 + MediaQuery.of(context).padding.bottom,
                  ),
                  itemCount: data.items.length + (data.isLoadingMore ? 1 : 0),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    if (index == data.items.length) {
                      return const Center(
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                    return TweenAnimationBuilder<double>(
                      tween: Tween(begin: 0.0, end: 1.0),
                      duration: Duration(milliseconds: 300 + (index * 50)),
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
                      child: TransactionHistoryItem(
                        item: data.items[index],
                        type: widget.type,
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
        // 에러 메시지 추출
        String errorMessage = '데이터를 불러오는데 실패했습니다.';
        if (error.toString().contains('Exception:')) {
          errorMessage = error.toString().replaceFirst('Exception:', '').trim();
        } else if (error.toString().contains('NetworkFailure')) {
          errorMessage = '네트워크 연결을 확인해주세요.';
        } else if (error.toString().contains('UnauthorizedFailure')) {
          errorMessage = '로그인이 필요합니다.';
        } else if (error is Exception) {
          final msg = error.toString();
          if (msg.isNotEmpty && msg != 'Exception') {
            errorMessage = msg;
          }
        }

        return Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.error_outline, size: 48, color: AppColors.error),
                const SizedBox(height: 16),
                Text(
                  errorMessage,
                  style: AppTextStyles.body2.copyWith(
                    color: AppColors.textSecondary,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                TextButton(onPressed: _refresh, child: const Text('다시 시도')),
              ],
            ),
          ),
        );
      },
    );
  }
}
