import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/navigation/deep_link_handler.dart';
import 'package:ticket_platform_mobile/core/services/fcm_service.dart';
import 'package:ticket_platform_mobile/core/storage/token_storage.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/viewmodels/chat_list_viewmodel.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/view/chat_view.dart';
import 'package:ticket_platform_mobile/features/home/presentation/views/home_view.dart';
import 'package:ticket_platform_mobile/features/home/presentation/widgets/home_bottom_nav.dart';
import 'package:ticket_platform_mobile/features/notification/presentation/providers/notification_providers_di.dart';
import 'package:ticket_platform_mobile/features/notification/presentation/viewmodels/notification_list_viewmodel.dart';
import 'package:ticket_platform_mobile/features/notification/presentation/viewmodels/unread_badge_viewmodel.dart';
import 'package:ticket_platform_mobile/features/wishlist/presentation/view/wishlist_view.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/views/profile_view.dart';

part 'main_tab_view.g.dart';

@riverpod
class CurrentTabIndex extends _$CurrentTabIndex {
  @override
  int build() => 0;

  void setIndex(int index) {
    state = index;
  }
}

class MainTabView extends ConsumerStatefulWidget {
  const MainTabView({super.key});

  @override
  ConsumerState<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends ConsumerState<MainTabView>
    with WidgetsBindingObserver {
  StreamSubscription<String>? _tokenRefreshSubscription;
  bool _notificationInitialized = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _bootstrapNotificationFlow();
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _tokenRefreshSubscription?.cancel();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      ref.read(unreadBadgeViewModelProvider.notifier).syncUnreadCount();
    }
  }

  Future<void> _bootstrapNotificationFlow() async {
    if (_notificationInitialized) {
      return;
    }

    final hasToken = await ref.read(tokenStorageProvider).hasToken();
    if (!hasToken) {
      return;
    }

    _notificationInitialized = true;

    final fcmService = ref.read(fcmServiceProvider);

    try {
      await fcmService.initialize(
        onForegroundMessage: _handleForegroundMessage,
        onMessageOpenedApp: _handleOpenedMessage,
      );

      await _registerCurrentFcmToken();
      await ref.read(unreadBadgeViewModelProvider.notifier).syncUnreadCount();

      _tokenRefreshSubscription?.cancel();
      _tokenRefreshSubscription = fcmService.onTokenRefresh.listen((token) {
        unawaited(_registerFcmToken(token));
      });
    } catch (e, stack) {
      _notificationInitialized = false;
      AppLogger.e('[FCM] notification bootstrap 실패', e, stack);
    }
  }

  void _handleForegroundMessage(FcmMessagePayload payload) {
    ref.invalidate(notificationListViewModelProvider);

    if (_shouldSuppressForegroundBanner(payload)) {
      return;
    }

    ref.read(unreadBadgeViewModelProvider.notifier).increase();
    _showForegroundBanner(payload);
  }

  Future<void> _handleOpenedMessage(FcmMessagePayload payload) async {
    await ref.read(unreadBadgeViewModelProvider.notifier).syncUnreadCount();
    await ref.read(deepLinkHandlerProvider).handlePayload(payload);
  }

  bool _shouldSuppressForegroundBanner(FcmMessagePayload payload) {
    if (payload.normalizedType != 'CHAT_MESSAGE') {
      return false;
    }

    final roomId = payload.roomId;
    if (roomId == null) {
      return false;
    }

    final currentRoomId = ref
        .read(chatListViewModelProvider.notifier)
        .currentRoomId;
    return currentRoomId == roomId;
  }

  void _showForegroundBanner(FcmMessagePayload payload) {
    if (!mounted) {
      return;
    }

    final title = (payload.title ?? '').trim().isEmpty
        ? '새 알림'
        : payload.title!.trim();
    final body = (payload.body ?? '').trim();
    final text = body.isEmpty ? title : '$title\n$body';

    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text, maxLines: 2, overflow: TextOverflow.ellipsis),
        duration: const Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(
          label: '보기',
          onPressed: () {
            unawaited(ref.read(deepLinkHandlerProvider).handlePayload(payload));
          },
        ),
      ),
    );
  }

  Future<void> _registerCurrentFcmToken() async {
    final token = await ref.read(fcmServiceProvider).getToken();
    if (token == null || token.isEmpty) {
      AppLogger.w('[FCM] token 없음 - 서버 등록 스킵');
      return;
    }

    await _registerFcmToken(token);
  }

  Future<void> _registerFcmToken(String token) async {
    try {
      await ref
          .read(registerFcmTokenUsecaseProvider)
          .call(deviceToken: token, platform: _resolvePlatform());
      AppLogger.i('[FCM] 토큰 서버 등록 성공');
    } catch (e, stack) {
      AppLogger.e('[FCM] 토큰 서버 등록 실패', e, stack);
    }
  }

  String _resolvePlatform() {
    return Platform.isIOS ? 'IOS' : 'ANDROID';
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = ref.watch(currentTabIndexProvider);

    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [HomeView(), ChatView(), WishlistView(), ProfileView()],
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
