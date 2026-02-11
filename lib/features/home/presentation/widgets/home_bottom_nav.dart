import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/viewmodels/chat_list_viewmodel.dart';
import 'package:ticket_platform_mobile/features/notification/presentation/viewmodels/unread_badge_viewmodel.dart';
import 'package:ticket_platform_mobile/features/notification/presentation/widgets/notification_badge_widget.dart';

class HomeBottomNav extends ConsumerWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const HomeBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 읽지 않은 메시지 확인
    final hasUnreadMessages = ref.watch(
      chatListViewModelProvider.select((asyncValue) {
        return asyncValue.when(
          data: (rooms) => rooms.any((room) => room.unreadCount > 0),
          loading: () => false,
          error: (_, __) => false,
        );
      }),
    );
    final unreadNotificationCount = ref.watch(unreadBadgeViewModelProvider);

    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.textTertiary,
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home_filled),
          label: '홈',
        ),
        BottomNavigationBarItem(
          icon: _buildChatIcon(hasUnreadMessages: hasUnreadMessages),
          label: '채팅',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: '찜',
        ),
        BottomNavigationBarItem(
          icon: _buildProfileIcon(unreadCount: unreadNotificationCount),
          label: '내정보',
        ),
      ],
    );
  }

  Widget _buildProfileIcon({required int unreadCount}) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const Icon(Icons.person_outline),
        if (unreadCount > 0)
          Positioned(
            right: -6,
            top: -4,
            child: NotificationBadgeWidget(count: unreadCount, small: true),
          ),
      ],
    );
  }

  /// 채팅 아이콘 + NEW 배지
  Widget _buildChatIcon({required bool hasUnreadMessages}) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const Icon(Icons.chat_bubble_outline),
        if (hasUnreadMessages)
          Positioned(
            right: -6,
            top: -4,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              decoration: BoxDecoration(
                color: AppColors.destructive,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                'NEW',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                  height: 1.0,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
