import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/view/chat_view.dart';
import 'package:ticket_platform_mobile/features/events/presentation/view/events_view.dart';
import 'package:ticket_platform_mobile/features/home/presentation/views/home_view.dart';
import 'package:ticket_platform_mobile/features/home/presentation/widgets/home_bottom_nav.dart';
import 'package:ticket_platform_mobile/features/wishlist/presentation/view/wishlist_view.dart';

part 'main_tab_view.g.dart';

@riverpod
class CurrentTabIndex extends _$CurrentTabIndex {
  @override
  int build() => 0;
  
  void setIndex(int index) {
    state = index;
  }
}

class MainTabView extends ConsumerWidget {
  const MainTabView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(currentTabIndexProvider);

    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [
          HomeView(),
          EventsView(),
          ChatView(),
          WishlistView(),
          // ProfileView(), // TODO: ProfileView 구현 후 추가
          Placeholder(child: Center(child: Text('내정보'))), // 임시
        ],
      ),
      bottomNavigationBar: HomeBottomNav(
        currentIndex: currentIndex,
        onTap: (index) {
          ref.read(currentTabIndexProvider.notifier).setIndex(index);
        },
      ),
    );
  }
}
