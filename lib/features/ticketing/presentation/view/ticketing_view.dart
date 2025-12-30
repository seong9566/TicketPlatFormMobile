import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/widgets/ticket_listing_card.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/widgets/ticketing_filter_bar.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/widgets/ticketing_header_section.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/widgets/ticketing_list_header.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_ui_model.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/viewmodels/ticketing_state.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/viewmodels/ticketing_viewmodel.dart';

class TicketingView extends ConsumerWidget {
  final String performanceId;

  const TicketingView({super.key, required this.performanceId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 정렬 필터 바텀 시트
    void showSortBottomSheet(BuildContext context, WidgetRef ref) {
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

    final stateAsync = ref.watch(ticketingViewModelProvider(performanceId));

    return Scaffold(
      backgroundColor: AppColors.muted,
      appBar: _buildAppBar(context, stateAsync),
      body: stateAsync.when(
        data: (state) {
          final info = state.ticketingInfo;
          if (info == null) return const Center(child: Text('정보를 불러올 수 없습니다.'));

          // 1. 필터링 로직 (좌석 등급)
          var filteredListings = info.listings.where((listing) {
            if (state.selectedGrade == null ||
                state.selectedGrade!.id == 'all') {
              return true;
            }
            return listing.gradeName == state.selectedGrade!.name;
          }).toList();

          // 2. 정렬 로직
          if (state.sortBy == '가격 낮은순') {
            filteredListings.sort((a, b) => a.price.compareTo(b.price));
          } else if (state.sortBy == '가격 높은순') {
            filteredListings.sort((a, b) => b.price.compareTo(a.price));
          } else if (state.sortBy == '최신순') {
            filteredListings.sort((a, b) => b.createdAt.compareTo(a.createdAt));
          }

          return SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: CustomScrollView(
                    slivers: [
                      // 공연 정보
                      SliverToBoxAdapter(
                        child: TicketingHeaderSection(info: info),
                      ),
                      _buildStickyFilter(performanceId, state, ref),
                      SliverToBoxAdapter(
                        child: TicketingListHeader(
                          count: filteredListings.length,
                          sortBy: state.sortBy,
                          onSortTap: () => showSortBottomSheet(context, ref),
                        ),
                      ),
                      _buildListingList(filteredListings),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(Icons.tune, color: Colors.white),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(
    BuildContext context,
    AsyncValue stateAsync,
  ) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => Navigator.pop(context),
      ),
      title: stateAsync.maybeWhen(
        data: (state) => Text(
          state.ticketingInfo?.title ?? '',
          style: AppTextStyles.heading3.copyWith(color: Colors.black),
        ),
        orElse: () => const Text(''),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search, color: Colors.black),
          onPressed: () {},
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Divider(height: 1, color: Colors.grey.withValues(alpha: 0.1)),
      ),
    );
  }

  Widget _buildStickyFilter(String id, TicketingState state, WidgetRef ref) {
    final info = state.ticketingInfo;
    if (info == null) return const SliverToBoxAdapter(child: SizedBox.shrink());

    return SliverPersistentHeader(
      pinned: true,
      delegate: _FilterHeaderDelegate(
        child: TicketingFilterBar(
          grades: info.ticketGrades,
          selectedGrade: state.selectedGrade,
          onGradeSelected: (grade) => ref
              .read(ticketingViewModelProvider(id).notifier)
              .selectGrade(grade),
        ),
      ),
    );
  }

  Widget _buildListingList(List<TicketListingUiModel> listings) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.md,
      ),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => TicketListingCard(
            performanceId: performanceId,
            listing: listings[index],
          ),
          childCount: listings.length,
        ),
      ),
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
}

class _FilterHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  _FilterHeaderDelegate({required this.child});

  @override
  Widget build(context, shrinkOffset, overlapsContent) => child;

  @override
  double get maxExtent => 60;
  @override
  double get minExtent => 60;
  @override
  bool shouldRebuild(covariant _FilterHeaderDelegate oldDelegate) => true;
}
