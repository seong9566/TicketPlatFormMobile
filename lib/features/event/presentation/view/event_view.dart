import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/event/presentation/view/widgets/event_session_list_tile.dart';
import 'package:ticket_platform_mobile/features/event/presentation/view/widgets/event_session_search_bar.dart';
import 'package:ticket_platform_mobile/features/event/presentation/view/widgets/event_chip_list.dart';
import 'package:ticket_platform_mobile/features/event/presentation/view/widgets/request_event_session_card.dart';
import 'package:ticket_platform_mobile/features/event/presentation/viewmodels/event_viewmodel.dart';

class EventView extends ConsumerWidget {
  final String eventId;

  const EventView({super.key, required this.eventId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateAsync = ref.watch(eventViewModelProvider(eventId));

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(
          '아티스트 선택',
          style: AppTextStyles.heading2.copyWith(fontSize: 18),
        ),
        centerTitle: true,
        backgroundColor: AppColors.background,
        surfaceTintColor: AppColors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.textPrimary,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: stateAsync.when(
        data: (state) => CustomScrollView(
          slivers: [
            // Safe Area Spacing
            const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.sm)),

            // Search Bar
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: EventSessionSearchBar(),
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.lg)),

            // Event Chips
            SliverToBoxAdapter(
              child: EventChipList(selectedEvent: state.selectedEvent),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.xl)),

            // Popular Event Sessions Header
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: Text(
                  '현재 인기 아티스트',
                  style: AppTextStyles.body1.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.secondary,
                  ),
                ),
              ),
            ),

            // Popular Event Sessions List
            if (state.popularEventSessions.isNotEmpty) ...[
              const SliverToBoxAdapter(
                child: Divider(
                  color: AppColors.border,
                  height: 1,
                  indent: 20,
                  endIndent: 20,
                ),
              ),
              SliverList.separated(
                itemBuilder: (context, index) => EventSessionListTile(
                  session: state.popularEventSessions[index],
                ),
                separatorBuilder: (context, index) => const Divider(
                  color: AppColors.border,
                  height: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                itemCount: state.popularEventSessions.length,
              ),
              const SliverToBoxAdapter(
                child: Divider(
                  color: AppColors.border,
                  height: 1,
                  indent: 20,
                  endIndent: 20,
                ),
              ),
            ],

            const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.lg)),

            // All Event Sessions Header
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '전체 아티스트',
                      style: AppTextStyles.body1.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.secondary,
                      ),
                    ),
                    Text(
                      '가나다순',
                      style: AppTextStyles.body2.copyWith(
                        fontSize: 12,
                        color: AppColors.textTertiary,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // All Event Sessions List
            if (state.allEventSessions.isNotEmpty) ...[
              const SliverToBoxAdapter(
                child: Divider(
                  color: AppColors.border,
                  height: 1,
                  indent: 20,
                  endIndent: 20,
                ),
              ),
              SliverList.separated(
                itemBuilder: (context, index) => EventSessionListTile(
                  session: state.allEventSessions[index],
                ),
                separatorBuilder: (context, index) => const Divider(
                  color: AppColors.border,
                  height: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                itemCount: state.allEventSessions.length,
              ),
              const SliverToBoxAdapter(
                child: Divider(
                  color: AppColors.border,
                  height: 1,
                  indent: 20,
                  endIndent: 20,
                ),
              ),
            ],

            const SliverToBoxAdapter(child: SizedBox(height: 10)),

            // Request Card
            const SliverToBoxAdapter(child: RequestEventSessionCard()),

            const SliverToBoxAdapter(child: SizedBox(height: 40)),
          ],
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
