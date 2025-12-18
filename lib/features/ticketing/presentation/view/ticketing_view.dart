import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/widgets/ticket_listing_card.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/widgets/ticketing_filter_bar.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/widgets/ticketing_header_section.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/widgets/ticketing_list_header.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/viewmodels/ticketing_viewmodel.dart';

class TicketingView extends ConsumerWidget {
  final String performanceId;

  const TicketingView({super.key, required this.performanceId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateAsync = ref.watch(ticketingViewModelProvider(performanceId));

    return Scaffold(
      backgroundColor: AppColors.muted,
      appBar: _buildAppBar(context, stateAsync),
      body: stateAsync.when(
        data: (state) {
          final info = state.ticketingInfo;
          if (info == null) return const Center(child: Text('정보를 불러올 수 없습니다.'));

          return Column(
            children: [
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: TicketingHeaderSection(info: info),
                    ),
                    _buildStickyFilter(performanceId, state, ref),
                    SliverToBoxAdapter(
                      child: TicketingListHeader(
                        count: info.listings.length,
                        sortBy: state.sortBy,
                        onSortTap: () {},
                      ),
                    ),
                    _buildListingList(info.listings),
                  ],
                ),
              ),
            ],
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

  Widget _buildStickyFilter(String id, dynamic state, WidgetRef ref) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _FilterHeaderDelegate(
        child: TicketingFilterBar(
          grades: state.ticketingInfo!.ticketGrades,
          selectedGrade: state.selectedGrade,
          onGradeSelected: (grade) => ref
              .read(ticketingViewModelProvider(id).notifier)
              .selectGrade(grade),
        ),
      ),
    );
  }

  Widget _buildListingList(List listings) {
    return SliverPadding(
      padding: const EdgeInsets.all(AppSpacing.lg),
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
