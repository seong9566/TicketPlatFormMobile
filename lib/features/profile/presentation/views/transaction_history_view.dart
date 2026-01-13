import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/widgets/transaction_history_item.dart';

class TransactionHistoryView extends StatefulWidget {
  final int initialIndex;

  const TransactionHistoryView({
    super.key,
    this.initialIndex = 0,
  });

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
        title: const Text(
          '거래 내역',
          style: AppTextStyles.body1,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, color: AppColors.textPrimary),
            onPressed: () {},
          ),
        ],
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
              children: [
                _buildPurchaseList(),
                _buildSalesList(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPurchaseList() {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: 3,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        return TransactionHistoryItem(
          imageUrl: 'https://picsum.photos/200?random=$index',
          category: '뮤지컬',
          title: '뮤지컬 <오페라의 유령>',
          price: '150,000원',
          date: '2023.10.26',
          location: '블루스퀘어',
          seat: 'A구역 3열 15번',
          state: '거래 완료',
          stateColor: AppColors.success,
        );
      },
    );
  }

  Widget _buildSalesList() {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: 2,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        return TransactionHistoryItem(
          imageUrl: 'https://picsum.photos/200?random=${index + 10}',
          category: '콘서트',
          title: '콘서트 <아이유>',
          price: '180,000원',
          date: '2023.10.24',
          location: 'KSPO돔',
          seat: 'S구역 12열 8번',
          state: '입금 대기',
            stateColor: AppColors.badgeWaitingBackground,
            stateTextColor: AppColors.badgeWaitingText,
        );
      },
    );
  }
}
