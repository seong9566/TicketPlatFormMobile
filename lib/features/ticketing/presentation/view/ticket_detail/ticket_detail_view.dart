import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticket_detail/widgets/ticket_detail_bottom_action.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/widgets/ticketing_header_section.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticket_detail/widgets/ticket_detail_seller_info.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticket_detail/widgets/ticket_detail_header.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticket_detail/widgets/ticket_detail_seat_features.dart';
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
      backgroundColor: AppColors.scaffoldBackground,
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
              padding: const EdgeInsets.only(bottom: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TicketingHeaderSection(
                    ticketingInfo: TicketingInfoUiModel(
                      title: detail.performanceTitle,
                      imageUrl: detail.performanceImageUrl,
                      eventDate: detail.performanceDate,
                      location: detail.location,
                      isHot: false, // detailView에서 사용하지 않음
                      ticketGrades: [],
                      tickets: [],
                    ),
                  ),
                  TicketDetailHeader(detail: detail),
                  const SizedBox(height: AppSpacing.xs),
                  _buildSectionHeader('상세 설명'),
                  _buildDescription(detail.description),
                  _buildSectionHeader('좌석 특징'),
                  TicketDetailSeatFeatures(tags: detail.tags),

                  if (detail.listingImageUrl != null &&
                      detail.listingImageUrl!.isNotEmpty) ...[
                    _buildProductImage(detail.listingImageUrl),
                    const SizedBox(height: AppSpacing.md),
                    const Center(
                      child: Text(
                        '* 상품 이미지는 판매자가 직접 등록한 이미지입니다.',
                        style: TextStyle(
                          color: Color(0xFF94A3B8),
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ],
                  TicketDetailSellerInfo(seller: detail.seller),
                  const SizedBox(height: AppSpacing.lg),
                ],
              ),
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, stack) => Center(child: Text('Error: $err')),
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
        onPressed: () => Navigator.pop(context),
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
        AppSpacing.md,
        AppSpacing.lg,
        AppSpacing.sm,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: AppColors.textSecondary,
        ),
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
}
