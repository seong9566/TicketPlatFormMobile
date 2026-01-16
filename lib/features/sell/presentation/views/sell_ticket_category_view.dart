import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/enums/category.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/widgets/category_card.dart';

/// 티켓 판매 카테고리 선택 화면
class SellTicketCategoryView extends StatefulWidget {
  const SellTicketCategoryView({super.key});

  @override
  State<SellTicketCategoryView> createState() => _SellTicketCategoryViewState();
}

class _SellTicketCategoryViewState extends State<SellTicketCategoryView> {
  Category? _selectedCategory;

  final _categories = const [
    CategoryItem(category: Category.concert, icon: Icons.music_note),
    CategoryItem(category: Category.musical, icon: Icons.theater_comedy),
    CategoryItem(category: Category.sports, icon: Icons.sports_soccer),
    CategoryItem(category: Category.exhibition, icon: Icons.celebration),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(AppSpacing.xl),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSpacing.lg),
                _buildHeader(),
                const SizedBox(height: AppSpacing.xl),
                _buildCategoryGrid(),
              ],
            ),
          ),
        ),
        _buildNextButton(),
      ],
    );
  }

  Widget _buildHeader() {
    return Text(
      '어떤 종류의 티켓을\n판매하시나요?',
      style: AppTextStyles.heading2.copyWith(
        color: AppColors.textPrimary,
        fontWeight: FontWeight.w700,
        height: 1.3,
      ),
    );
  }

  Widget _buildCategoryGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: AppSpacing.md,
        mainAxisSpacing: AppSpacing.md,
        childAspectRatio: 1.0,
      ),
      itemCount: _categories.length,
      itemBuilder: (context, index) {
        final item = _categories[index];
        final isSelected = _selectedCategory == item.category;

        return CategoryCard(
          item: item,
          isSelected: isSelected,
          onTap: () {
            setState(() {
              _selectedCategory = item.category;
            });
          },
        );
      },
    );
  }

  Widget _buildNextButton() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: SizedBox(
          width: double.infinity,
          height: 56,
          child: ElevatedButton(
            onPressed: _selectedCategory == null
                ? null
                : () {
                    context.push(
                      '${AppRouterPath.sellEventSelection.path}/${_selectedCategory!.code}',
                    );
                  },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              disabledBackgroundColor: AppColors.disabled,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 0,
            ),
            child: Text(
              '다음',
              style: AppTextStyles.body1.copyWith(
                color: _selectedCategory == null
                    ? AppColors.textTertiary
                    : Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
