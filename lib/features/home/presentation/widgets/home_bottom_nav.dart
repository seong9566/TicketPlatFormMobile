import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';

class HomeBottomNav extends StatefulWidget {
  const HomeBottomNav({super.key});

  @override
  State<HomeBottomNav> createState() => _HomeBottomNavState();
}

class _HomeBottomNavState extends State<HomeBottomNav> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        // Placeholder navigation
        if (index == 0) context.go(AppRouterPath.home);
        if (index == 1) context.go(AppRouterPath.events);
        if (index == 2) context.go(AppRouterPath.chat);
        if (index == 3) context.push(AppRouterPath.wishlist);
        if (index == 4) context.go(AppRouterPath.profile);
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.textTertiary,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home_filled),
          label: '홈',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: '검색'),
        BottomNavigationBarItem(
          icon: Badge(
            label: Text('3'),
            backgroundColor: Color(0xFFEF4444),
            child: Icon(Icons.chat_bubble_outline),
          ),
          label: '채팅',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: '찜'),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: '내정보'),
      ],
    );
  }
}
