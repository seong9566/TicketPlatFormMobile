import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/event/domain/entities/event_type.dart';

class HomeEventRow extends StatelessWidget {
  const HomeEventRow({super.key, required this.events});

  final List<HomeEvent> events;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: events
            .map(
              (event) => GestureDetector(
                onTap: () =>
                    context.push('${AppRouterPath.event}/${event.type.code}'),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: AppColors.primaryLight,
                        borderRadius: BorderRadius.circular(AppRadius.md),
                      ),
                      child: Icon(event.icon, color: AppColors.primary),
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Text(
                      event.name,
                      style: AppTextStyles.body2.copyWith(
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class HomeEvent {
  const HomeEvent({required this.name, required this.icon, required this.type});
  final String name;
  final IconData icon;
  final EventType type;
}
