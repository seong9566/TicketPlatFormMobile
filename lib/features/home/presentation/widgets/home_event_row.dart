import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/enums/category.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
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
                        color: event.type.backgroundColor,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Icon(
                        event.icon,
                        size: 28,
                        color: event.type.color,
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
