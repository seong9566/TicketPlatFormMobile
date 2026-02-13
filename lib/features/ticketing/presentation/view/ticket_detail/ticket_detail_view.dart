import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/features/chat/data/repositories/chat_repository_impl.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/viewmodels/profile_viewmodel.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_info_ui_model.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticket_detail/viewmodels/ticket_detail_state.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticket_detail/viewmodels/ticket_detail_viewmodel.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticket_detail/widgets/ticket_detail_bottom_action.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticket_detail/widgets/ticket_detail_feature_section.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticket_detail/widgets/ticket_detail_seller_info.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticket_detail/widgets/ticket_detail_trade_section.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticket_detail/widgets/ticket_detail_widgets.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticket_detail/widgets/ticket_summary_section.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/widgets/ticketing_header_section.dart';

class TicketDetailView extends ConsumerWidget {
  final String listingId;

  const TicketDetailView({super.key, required this.listingId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ticketId = int.tryParse(listingId) ?? 0;
    final ticketDetailStateAsync = ref.watch(
      ticketDetailViewModelProvider(ticketId),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(context),
      body: SafeArea(
        top: true,
        bottom: false,
        child: ticketDetailStateAsync.when(
          data: (ticketDetailState) {
            final detail = ticketDetailState.detail;
            if (detail == null) {
              return const Center(child: Text('티켓 정보를 불러올 수 없습니다.'));
            }

            return SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: AppSpacing.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 공연 헤더 정보
                  TicketingHeaderSection(
                    ticketingInfo: TicketingInfoUiModel(
                      title: detail.performanceTitle ?? '',
                      imageUrl: detail.performanceImageUrl ?? '',
                      eventDate: detail.performanceDate ?? DateTime.now(),
                      location: detail.location ?? '',
                      isHot: false,
                      ticketGrades: [],
                      tickets: [],
                    ),
                  ),
                  const TicketDetailThickDivider(),

                  // 1. 티켓 요약 카드
                  TicketDetailSectionHeader(
                    title: '티켓 요약',
                    actions: [TicketDetailStatusBadges(detail: detail)],
                  ),
                  TicketSummarySection(detail: detail),
                  const TicketDetailThinDivider(),

                  // 2. 거래 방식
                  TicketDetailTradeSection(
                    tradeMethodName: detail.tradeMethodName,
                  ),
                  const TicketDetailThinDivider(),

                  // 3. 특이사항
                  TicketDetailFeatureSection(tags: detail.tags),
                  const TicketDetailThinDivider(),

                  // 4. 상세 설명
                  const TicketDetailSectionHeader(title: '상세 설명'),
                  TicketDetailDescription(description: detail.description),

                  // 5. 티켓 이미지
                  if (detail.images.isNotEmpty)
                    TicketDetailImageSection(imageUrl: detail.images.first),

                  // 6. 판매자 정보
                  TicketDetailSellerInfo(
                    seller: detail.seller,
                    onReportTap: () => _handleReport(context, ref, ticketId),
                  ),
                ],
              ),
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, stack) => _buildErrorState(ref, ticketId),
        ),
      ),
      bottomNavigationBar: _buildBottomBar(
        ref,
        ticketDetailStateAsync,
        ticketId,
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      elevation: 0,
      centerTitle: true,
      title: const Text('티켓 상세 정보'),
    );
  }

  Widget _buildErrorState(WidgetRef ref, int ticketId) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '티켓 정보를 불러오는데 실패했습니다.',
            style: TextStyle(fontSize: 16, color: AppColors.textSecondary),
          ),
          const SizedBox(height: AppSpacing.md),
          ElevatedButton(
            onPressed: () {
              ref
                  .read(ticketDetailViewModelProvider(ticketId).notifier)
                  .refresh(ticketId);
            },
            child: const Text('다시 시도'),
          ),
        ],
      ),
    );
  }

  Widget? _buildBottomBar(
    WidgetRef ref,
    AsyncValue<TicketDetailState> stateAsync,
    int ticketId,
  ) {
    return stateAsync.maybeWhen(
      data: (state) {
        final detail = state.detail;
        if (detail == null) return null;

        final profileState = ref.watch(profileViewModelProvider);
        final myUserId = profileState.value?.profile?.userId;
        final isMine = myUserId == detail.seller.userId;

        return SafeArea(
          top: false,
          child: TicketDetailBottomAction(
            ticketId: ticketId,
            isMine: isMine,
            isFavorited: detail.isFavorited,
          ),
        );
      },
      orElse: () => null,
    );
  }

  Future<void> _handleReport(
    BuildContext context,
    WidgetRef ref,
    int ticketId,
  ) async {
    final chatRepository = ref.read(chatRepositoryProvider);
    final room = await chatRepository.getChatRoomByTicket(ticketId);
    final transactionId = room?.transaction?.transactionId;

    if (!context.mounted) return;

    if (transactionId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('거래 진행 중인 채팅방에서만 신고할 수 있습니다.')),
      );
      return;
    }

    context.pushNamed(
      AppRouterPath.disputeCreate.name,
      pathParameters: {'transactionId': transactionId.toString()},
    );
  }
}
