import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';

class HomeBottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const HomeBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.textTertiary,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home_filled),
          label: '홈',
        ),
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
