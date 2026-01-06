import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/enums/category.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

class HomeEvent {
  const HomeEvent({required this.name, required this.icon, required this.type});
  final String name;
  final IconData icon;
  final Category type;
}

class HomeEventRow extends StatelessWidget {
  const HomeEventRow({super.key, required this.events});

  final List<HomeEvent> events;

  @override
  Widget build(BuildContext context) {
    Color getBgColor(Category type) {
      switch (type) {
        case Category.concert:
          return AppColors.categoryConcertBg;
        case Category.musical:
          return AppColors.categoryMusicalBg;
        case Category.sports:
          return AppColors.categorySportsBg;
        case Category.etc:
          return AppColors.categoryExhibitionBg;
        default:
          return AppColors.primaryLight;
      }
    }

    Color getIconColor(Category type) {
      switch (type) {
        case Category.concert:
          return AppColors.categoryConcert;
        case Category.musical:
          return AppColors.categoryMusical;
        case Category.sports:
          return AppColors.categorySports;
        case Category.etc:
          return AppColors.categoryExhibition;
        default:
          return AppColors.primary;
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      child: Row(
        children: events.map((event) {
          return Expanded(
            child: GestureDetector(
              onTap: () => context.push(
                '${AppRouterPath.events}?category=${event.type.label}',
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                        color: getBgColor(event.type),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Icon(
                        event.icon,
                        color: getIconColor(event.type),
                        size: 24,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      event.name,
                      style: AppTextStyles.body2.copyWith(
                        color: const Color(0xFF334155),
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
