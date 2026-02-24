import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/presentation/viewmodels/sales_dashboard_viewmodel.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/presentation/widgets/event_group_card.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/presentation/widgets/sales_status_filter_bar.dart';

class SalesDashboardView extends ConsumerStatefulWidget {
  const SalesDashboardView({super.key});

  @override
  ConsumerState<SalesDashboardView> createState() => _SalesDashboardViewState();
}

class _SalesDashboardViewState extends ConsumerState<SalesDashboardView> {
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
      ref.read(salesDashboardViewModelProvider.notifier).loadMore();
    }
  }

  Future<void> _refresh() async {
    return ref.read(salesDashboardViewModelProvider.notifier).refresh();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(salesDashboardViewModelProvider);

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
            title: const Text('판매 관리', style: AppTextStyles.body1),
            centerTitle: true,
          ),
          body: state.when(
            data: (data) => _buildDataContent(context, data),
            loading: () => const Center(
              child: CircularProgressIndicator(color: AppColors.primary),
            ),
            error: (error, stack) => _buildErrorContent(error),
          ),
        ),
      ),
    );
  }

  Widget _buildDataContent(BuildContext context, SalesDashboardState data) {
    return Column(
      children: [
        SalesStatusFilterBar(
          selectedStatus: data.selectedStatus,
          onFilterChanged: (status) {
            ref
                .read(salesDashboardViewModelProvider.notifier)
                .applyStatusFilter(status);
          },
        ),
        const Divider(height: 1, color: AppColors.border),
        Expanded(
          child: data.items.isEmpty
              ? _buildEmptyContent()
              : _buildListContent(data),
        ),
      ],
    );
  }

  Widget _buildEmptyContent() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.storefront_outlined,
            size: 48,
            color: AppColors.textDisabled,
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            '등록된 판매 티켓이 없습니다.',
            style: AppTextStyles.body2.copyWith(color: AppColors.textSecondary),
          ),
        ],
      ),
    );
  }

  Widget _buildListContent(SalesDashboardState data) {
    return RefreshIndicator(
      onRefresh: _refresh,
      child: ListView.separated(
        controller: _scrollController,
        padding: EdgeInsets.only(
          left: AppSpacing.md,
          right: AppSpacing.md,
          top: AppSpacing.md,
          bottom: AppSpacing.md + MediaQuery.of(context).padding.bottom,
        ),
        itemCount: data.items.length + (data.isLoadingMore ? 1 : 0),
        separatorBuilder: (context, index) =>
            const SizedBox(height: AppSpacing.md),
        itemBuilder: (context, index) {
          if (index == data.items.length) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(AppSpacing.md),
                child: CircularProgressIndicator(),
              ),
            );
          }
          final item = data.items[index];
          return EventGroupCard(
            model: item,
            onTap: () {
              context.pushNamed(
                AppRouterPath.eventTicketList.name,
                pathParameters: {'eventId': item.eventId.toString()},
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildErrorContent(Object error) {
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
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 48, color: AppColors.error),
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
  }
}
