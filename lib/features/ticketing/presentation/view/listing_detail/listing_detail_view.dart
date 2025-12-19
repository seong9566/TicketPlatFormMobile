import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/listing_detail/widgets/listing_detail_bottom_action.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/listing_detail/widgets/listing_detail_performance_header.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/listing_detail/widgets/listing_detail_seller_info.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/listing_detail/widgets/listing_detail_ticket_header.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/listing_detail/widgets/listing_detail_transaction_features.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/listing_detail/widgets/listing_detail_warning_section.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/viewmodels/ticketing_viewmodel.dart';

class ListingDetailView extends ConsumerWidget {
  final String performanceId;
  final String listingId;

  const ListingDetailView({
    super.key,
    required this.performanceId,
    required this.listingId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateAsync = ref.watch(ticketingViewModelProvider(performanceId));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(context),
      body: stateAsync.when(
        data: (state) {
          final info = state.ticketingInfo;
          // Find the specific listing
          final listing = info?.listings.firstWhere(
            (l) => l.id == listingId,
            orElse: () => info.listings.first, // Fallback
          );

          if (info == null || listing == null) {
            return const Center(child: Text('정보를 불러올 수 없습니다.'));
          }

          return Stack(
            children: [
              SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 120),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListingDetailPerformanceHeader(info: info),
                    const Divider(height: 1, color: Color(0xFFF1F5F9)),
                    const SizedBox(height: AppSpacing.xs),
                    ListingDetailTicketHeader(listing: listing),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                      child: Divider(height: 1, color: Color(0xFFF1F5F9)),
                    ),
                    const SizedBox(height: AppSpacing.md),
                    ListingDetailSellerInfo(seller: listing.seller),
                    const SizedBox(height: AppSpacing.xs),
                    _buildSectionHeader('거래 정보'),
                    ListingDetailTransactionFeatures(
                      features: listing.transactionFeatures,
                    ),
                    _buildSectionHeader('상세 설명'),
                    _buildDescription(listing.description),
                    _buildProductImage(null), // Placeholder as in image
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
                    const SizedBox(height: 32),
                    const ListingDetailWarningSection(),
                    const SizedBox(height: AppSpacing.lg),
                  ],
                ),
              ),
              const ListingDetailBottomAction(),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
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
        18,
        AppSpacing.lg,
        AppSpacing.sm,
      ),
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }

  Widget _buildDescription(String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.xs,
      ),
      child: Text(
        description,
        style: const TextStyle(fontSize: 14, height: 1.5),
      ),
    );
  }

  Widget _buildProductImage(String? imageUrl) {
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
      child: imageUrl != null
          ? ClipRRect(
              borderRadius: BorderRadius.circular(AppRadius.lg),
              child: Image.network(imageUrl, fit: BoxFit.cover),
            )
          : const Center(
              child: Icon(Icons.image, size: 40, color: Color(0xFFCBD5E1)),
            ),
    );
  }
}
