import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/category/presentation/view/widgets/artist_list_tile.dart';
import 'package:ticket_platform_mobile/features/category/presentation/view/widgets/artist_search_bar.dart';
import 'package:ticket_platform_mobile/features/category/presentation/view/widgets/category_chip_list.dart';
import 'package:ticket_platform_mobile/features/category/presentation/view/widgets/request_artist_card.dart';
import 'package:ticket_platform_mobile/features/category/presentation/viewmodels/category_viewmodel.dart';

class CategoryView extends ConsumerWidget {
  final String categoryId;

  const CategoryView({super.key, required this.categoryId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateAsync = ref.watch(categoryViewModelProvider(categoryId));

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(
          '카테고리 선택',
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
                child: ArtistSearchBar(),
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.lg)),

            // Category Chips
            SliverToBoxAdapter(
              child: CategoryChipList(selectedCategory: state.selectedCategory),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.xl)),

            // Popular Artists Header
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: Text(
                  '인기 아티스트',
                  style: AppTextStyles.body1.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.secondary,
                  ),
                ),
              ),
            ),

            // Popular Artists List
            if (state.popularArtists.isNotEmpty) ...[
              const SliverToBoxAdapter(
                child: Divider(
                  color: AppColors.border,
                  height: 1,
                  indent: 20,
                  endIndent: 20,
                ),
              ),
              SliverList.separated(
                itemBuilder: (context, index) =>
                    ArtistListTile(artist: state.popularArtists[index]),
                separatorBuilder: (context, index) => const Divider(
                  color: AppColors.border,
                  height: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                itemCount: state.popularArtists.length,
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

            // All Artists Header
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

            // All Artists List
            if (state.allArtists.isNotEmpty) ...[
              const SliverToBoxAdapter(
                child: Divider(
                  color: AppColors.border,
                  height: 1,
                  indent: 20,
                  endIndent: 20,
                ),
              ),
              SliverList.separated(
                itemBuilder: (context, index) =>
                    ArtistListTile(artist: state.allArtists[index]),
                separatorBuilder: (context, index) => const Divider(
                  color: AppColors.border,
                  height: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                itemCount: state.allArtists.length,
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
            const SliverToBoxAdapter(child: RequestArtistCard()),

            const SliverToBoxAdapter(child: SizedBox(height: 40)),
          ],
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
