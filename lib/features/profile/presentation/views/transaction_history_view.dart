import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/viewmodels/transaction_history_viewmodel.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/widgets/transaction_history_item.dart';

class TransactionHistoryView extends StatefulWidget {
  final int initialIndex;

  const TransactionHistoryView({super.key, this.initialIndex = 0});

  @override
  State<TransactionHistoryView> createState() => _TransactionHistoryViewState();
}

class _TransactionHistoryViewState extends State<TransactionHistoryView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: widget.initialIndex,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
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
      body: Column(
        children: [
          Container(
            color: AppColors.background,
            child: TabBar(
              controller: _tabController,
              labelColor: AppColors.textPrimary,
              unselectedLabelColor: AppColors.textSecondary,
              labelStyle: AppTextStyles.body2,
              indicatorColor: AppColors.primary,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: const [
                Tab(text: '구매 내역'),
                Tab(text: '판매 내역'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                TransactionHistoryList(type: TransactionType.purchases),
                TransactionHistoryList(type: TransactionType.sales),
              ],
            ),
          ),
        ],
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

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(transactionHistoryViewModelProvider(widget.type));

    return state.when(
      data: (data) {
        if (data.items.isEmpty) {
          return Center(
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
                  widget.type == TransactionType.purchases
                      ? '구매 내역이 없습니다.'
                      : '판매 내역이 없습니다.',
                  style: AppTextStyles.body2.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          );
        }

        return RefreshIndicator(
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
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              if (index == data.items.length) {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              return TransactionHistoryItem(
                item: data.items[index],
                type: widget.type,
              );
            },
          ),
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(color: AppColors.primary),
      ),
      error: (error, stack) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 48, color: AppColors.error),
            const SizedBox(height: 16),
            Text(
              '데이터를 불러오는데 실패했습니다.',
              style: AppTextStyles.body2.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 8),
            TextButton(onPressed: _refresh, child: const Text('다시 시도')),
          ],
        ),
      ),
    );
  }
}
