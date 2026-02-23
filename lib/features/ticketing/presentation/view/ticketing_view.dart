import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/widgets/ticket_listing_card.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/widgets/ticketing_filter_header_delegate.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/widgets/ticketing_filter_bar.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/widgets/ticketing_header_section.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_ticket_ui_model.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_info_ui_model.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/viewmodels/ticketing_state.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/viewmodels/ticketing_viewmodel.dart';

class TicketingView extends ConsumerWidget {
  final String performanceId;

  const TicketingView({super.key, required this.performanceId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateAsync = ref.watch(ticketingViewModelProvider(performanceId));

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: _buildAppBar(context, stateAsync),
      body: stateAsync.when(
        data: (state) {
          final info = state.ticketingInfo;
          if (info == null) return const Center(child: Text('정보를 불러올 수 없습니다.'));

          // 1. 필터링 로직 (좌석 등급)
          var filteredListings = info.tickets.where((ticket) {
            final selectedGrade = state.selectedGrade;
            if (selectedGrade == null || selectedGrade.id == 'all') {
              return true;
            }
            return ticket.gradeName == selectedGrade.name;
          }).toList();

          // 2. 정렬 로직
          if (state.sortBy == '가격 낮은순') {
            filteredListings.sort(
              (a, b) => a.totalPrice.compareTo(b.totalPrice),
            );
          } else if (state.sortBy == '가격 높은순') {
            filteredListings.sort(
              (a, b) => b.totalPrice.compareTo(a.totalPrice),
            );
          } else if (state.sortBy == '최신순') {
            filteredListings.sort((a, b) => b.createdAt.compareTo(a.createdAt));
          }

          return SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: SizedBox(height: AppSpacing.md)),
                // 공연 정보
                SliverToBoxAdapter(
                  child: TicketingHeaderSection(ticketingInfo: info),
                ),
                SliverToBoxAdapter(child: SizedBox(height: AppSpacing.md)),
                // 구분선
                SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.md,
                    ),
                    child: const Divider(
                      height: 1,
                      thickness: 1,
                      color: AppColors.border,
                    ),
                  ),
                ),
                SliverToBoxAdapter(child: SizedBox(height: AppSpacing.sm)),
                // 필터 정보
                _buildStickyFilter(
                  performanceId,
                  state,
                  ref,
                  filteredListings.length,
                ),
                _buildListingList(filteredListings, ref),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 80),
                ), // FAB 여유 공간
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showSortBottomSheet(context, ref),
        backgroundColor: AppColors.secondary,
        elevation: 4,
        child: const Icon(Icons.swap_vert, color: Colors.white),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(
    BuildContext context,
    AsyncValue stateAsync,
  ) {
    return AppBar(
      backgroundColor: AppColors.background,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: AppColors.textPrimary,
          size: 20,
        ),
        onPressed: () => context.pop(),
      ),
      title: stateAsync.maybeWhen(
        data: (state) => Text(
          state.ticketingInfo?.title ?? '',
          style: AppTextStyles.heading3.copyWith(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        orElse: () => const Text(''),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.search, color: AppColors.textPrimary),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildStickyFilter(
    String id,
    TicketingState state,
    WidgetRef ref,
    int totalCount,
  ) {
    final info = state.ticketingInfo;
    if (info == null || info.ticketGrades.isEmpty) {
      return const SliverToBoxAdapter(child: SizedBox.shrink());
    }

    return SliverPersistentHeader(
      pinned: true,
      delegate: TicketingFilterHeaderDelegate(
        child: TicketingFilterBar(
          grades: info.ticketGrades,
          ticketingInfo: info,
          selectedGrade: state.selectedGrade,
          onGradeSelected: (TicketingGradeUiModel grade) => ref
              .read(ticketingViewModelProvider(id).notifier)
              .selectGrade(grade),
          totalCount: totalCount,
          sortBy: state.sortBy,
          onSortTap: () => _showSortBottomSheet(ref.context, ref),
        ),
      ),
    );
  }

  Widget _buildListingList(
    List<TicketingTicketUiModel> tickets,
    WidgetRef ref,
  ) {
    if (tickets.isEmpty) {
      return const SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Center(child: Text('해당되는 티켓이 없습니다.')),
        ),
      );
    }

    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final ticket = tickets[index];
        return TicketListingCard(
          ticket: ticket,
          onTap: () {
            context.push(
              '${AppRouterPath.ticketDetail.path}/${ticket.ticketId}',
            );
          },
          onFavoriteTap: () {
            ref
                .read(ticketingViewModelProvider(performanceId).notifier)
                .toggleFavorite(ticket.ticketId);
          },
        );
      }, childCount: tickets.length),
    );
  }

  Widget _buildSortOption(BuildContext context, WidgetRef ref, String option) {
    final currentSort = ref.watch(
      ticketingViewModelProvider(performanceId).select((s) => s.value?.sortBy),
    );
    final isSelected = currentSort == option;

    return ListTile(
      title: Text(
        option,
        style: AppTextStyles.body1.copyWith(
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          color: isSelected ? AppColors.primary : Colors.black,
        ),
      ),
      trailing: isSelected
          ? const Icon(Icons.check, color: AppColors.primary)
          : null,
      onTap: () {
        ref
            .read(ticketingViewModelProvider(performanceId).notifier)
            .updateSortBy(option);
        context.pop();
      },
    );
  }

  // 정렬 필터 바텀 시트
  void _showSortBottomSheet(BuildContext context, WidgetRef ref) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 12),
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              _buildSortOption(context, ref, '가격 낮은순'),
              _buildSortOption(context, ref, '가격 높은순'),
              _buildSortOption(context, ref, '최신순'),
              const SizedBox(height: 12),
            ],
          ),
        );
      },
    );
  }
}
