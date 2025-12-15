import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

class HomeCategoryWrap extends StatelessWidget {
  const HomeCategoryWrap({super.key, required this.categories});

  final List<HomeCategory> categories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      child: Wrap(
        spacing: AppSpacing.md,
        runSpacing: AppSpacing.md,
        children: categories
            .map(
              (category) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: AppColors.primaryLight,
                      borderRadius: BorderRadius.circular(AppRadius.md),
                    ),
                    child: Icon(category.icon, color: AppColors.primary),
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  Text(
                    category.name,
                    style: AppTextStyles.body2.copyWith(color: AppColors.textPrimary),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}

class HomeCategory {
  const HomeCategory({required this.name, required this.icon});
  final String name;
  final IconData icon;
}

