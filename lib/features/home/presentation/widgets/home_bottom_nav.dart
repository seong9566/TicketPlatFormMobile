import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/viewmodels/chat_list_viewmodel.dart';
import 'package:ticket_platform_mobile/features/notification/presentation/widgets/notification_badge_widget.dart';
import 'package:ticket_platform_mobile/features/wishlist/presentation/viewmodels/wishlist_viewmodel.dart';

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
    final unreadChatCount = ref.watch(
      chatListViewModelProvider.select((asyncValue) {
        return asyncValue.when(
          data: (rooms) =>
              rooms.fold<int>(0, (sum, room) => sum + room.unreadCount),
          loading: () => 0,
          error: (_, __) => 0,
        );
      }),
    );

    final wishlistCount = ref.watch(
      wishlistViewModelProvider.select((asyncValue) {
        return asyncValue.when(
          data: (state) => state.items.length,
          loading: () => 0,
          error: (_, __) => 0,
        );
      }),
    );

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
          icon: _buildChatIcon(unreadCount: unreadChatCount),
          label: '채팅',
        ),
        BottomNavigationBarItem(
          icon: _buildWishlistIcon(wishlistCount: wishlistCount),
          label: '찜',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: '내정보',
        ),
      ],
    );
  }

  /// 채팅 아이콘 + unread 카운트 배지
  Widget _buildChatIcon({required int unreadCount}) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const Icon(Icons.chat_bubble_outline),
        if (unreadCount > 0)
          Positioned(
            right: -6,
            top: -4,
            child: NotificationBadgeWidget(count: unreadCount, small: true),
          ),
      ],
    );
  }

  Widget _buildWishlistIcon({required int wishlistCount}) {
    return const Icon(Icons.favorite_border);
  }
}
