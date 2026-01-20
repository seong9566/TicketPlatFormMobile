import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_ticket_detail_ui_model.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticket_detail/widgets/ticket_detail_bottom_action.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/widgets/ticketing_header_section.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticket_detail/widgets/ticket_detail_seller_info.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticket_detail/widgets/ticket_summary_section.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticket_detail/widgets/ticket_detail_feature_section.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticket_detail/widgets/ticket_detail_trade_section.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticket_detail/viewmodels/ticket_detail_viewmodel.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_info_ui_model.dart';

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
                  TicketingHeaderSection(
                    ticketingInfo: TicketingInfoUiModel(
                      title: detail.performanceTitle ?? '',
                      imageUrl: detail.performanceImageUrl ?? '',
                      eventDate: detail.performanceDate ?? DateTime.now(),
                      location: detail.location ?? '',
                      isHot: false, // detailView에서 사용하지 않음
                      ticketGrades: [],
                      tickets: [],
                    ),
                  ),
                  _buildDivider8(),

                  // 1. 티켓 요약 카드 (중요 정보 우선 노출)
                  _buildSummaryHeader(detail),
                  TicketSummarySection(detail: detail),
                  _buildDivider1(),

                  // 2. 거래 방식 (거래 안정성 관련)
                  TicketDetailTradeSection(
                    tradeMethodName: detail.tradeMethodName,
                  ),
                  _buildDivider1(),

                  // 3. 특이사항
                  TicketDetailFeatureSection(tags: detail.tags),
                  _buildDivider1(),

                  // 4. 상세 설명
                  _buildSectionHeader('상세 설명'),
                  _buildDescription(detail.description),
                  // 5. 티켓 이미지
                  if (detail.images.isNotEmpty) ...[
                    _buildProductImage(detail.images.first),
                    const Center(
                      child: Text(
                        '티켓 이미지',
                        style: TextStyle(
                          color: AppColors.textTertiary,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(height: AppSpacing.lg),
                  ],

                  // 6. 판매자 정보
                  TicketDetailSellerInfo(seller: detail.seller),
                ],
              ),
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, stack) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '티켓 정보를 불러오는데 실패했습니다.',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.textSecondary,
                  ),
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
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        child: TicketDetailBottomAction(ticketId: int.tryParse(listingId) ?? 0),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => context.pop(),
      ),
      title: const Text(
        '티켓 상세 정보',
        style: TextStyle(
          color: Colors.black,
          fontSize: 17,
          fontWeight: FontWeight.w800,
          letterSpacing: -0.5,
        ),
      ),
      centerTitle: true,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(color: const Color(0xFFF1F5F9), height: 1),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.lg,
        0,
        AppSpacing.lg,
        AppSpacing.sm,
      ),
      child: Text(
        title,
        style: AppTextStyles.body1.copyWith(
          fontWeight: FontWeight.w800,
          color: AppColors.textPrimary,
        ),
      ),
    );
  }

  Widget _buildSummaryHeader(TicketingTicketDetailUiModel detail) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, AppSpacing.lg, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [_buildSectionHeader('티켓 요약'), _buildStatusBadges(detail)],
      ),
    );
  }

  Widget _buildDescription(String? description) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.xs,
      ),
      child: Text(
        description ?? '설명이 없습니다.',
        style: TextStyle(
          fontSize: 14,
          height: 1.5,
          color: AppColors.textPrimary,
        ),
      ),
    );
  }

  Widget _buildProductImage(String? imageUrl) {
    if (imageUrl == null || imageUrl.isEmpty) {
      return const SizedBox.shrink();
    }

    return Container(
      margin: const EdgeInsets.fromLTRB(
        AppSpacing.lg,
        AppSpacing.md,
        AppSpacing.lg,
        AppSpacing.sm,
      ),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: const Color(0xFFF1F5F9),
        borderRadius: BorderRadius.circular(AppRadius.lg),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppRadius.lg),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          placeholder: (context, url) =>
              const Center(child: CircularProgressIndicator(strokeWidth: 2)),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }

  Widget _buildStatusBadges(TicketingTicketDetailUiModel detail) {
    return Row(
      children: [
        if (detail.isConsecutive == true)
          _buildBadge(
            '연석',
            AppColors.textSecondary,
            AppColors.textSecondary.withValues(alpha: 0.1),
          ),
        if (detail.hasTicket == true) ...[
          const SizedBox(width: 4),
          _buildBadge(
            '티켓보유',
            AppColors.primary,
            AppColors.primary.withValues(alpha: 0.08),
          ),
        ],
      ],
    );
  }

  Widget _buildBadge(String label, Color color, Color bgColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w700,
          color: color,
        ),
      ),
    );
  }

  Widget _buildDivider8() {
    return Container(
      height: 8,
      width: double.infinity,
      color: const Color(0xFFF1F5F9),
      margin: const EdgeInsets.symmetric(vertical: AppSpacing.md),
    );
  }

  Widget _buildDivider1() {
    return Container(
      height: 1,
      width: double.infinity,
      color: const Color(0xFFF1F5F9),
      margin: const EdgeInsets.symmetric(
        vertical: AppSpacing.md,
        horizontal: AppRadius.md,
      ),
    );
  }
}
