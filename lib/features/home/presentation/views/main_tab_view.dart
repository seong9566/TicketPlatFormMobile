import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/navigation/deep_link_handler.dart';
import 'package:ticket_platform_mobile/core/services/fcm_service.dart';
import 'package:ticket_platform_mobile/core/services/local_notification_service.dart';
import 'package:ticket_platform_mobile/core/storage/token_storage.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/viewmodels/chat_list_viewmodel.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/viewmodels/chat_room_viewmodel.dart';
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
  bool _isDisposed = false; // dispose 상태 추적

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
    _isDisposed = true; // dispose 시작
    WidgetsBinding.instance.removeObserver(this);
    _tokenRefreshSubscription?.cancel();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      unawaited(_syncBadgeAndChatState());
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
      await _initializeLocalNotificationService();

      await fcmService.initialize(
        onForegroundMessage: _handleForegroundMessage,
        onMessageOpenedApp: _handleOpenedMessage,
      );

      await _registerCurrentFcmToken();
      await _syncBadgeAndChatState();

      _tokenRefreshSubscription?.cancel();
      _tokenRefreshSubscription = fcmService.onTokenRefresh.listen((token) {
        unawaited(_registerFcmToken(token));
      });
    } catch (e, stack) {
      _notificationInitialized = false;
      AppLogger.e('[FCM] notification bootstrap 실패', e, stack);
    }
  }

  Future<void> _initializeLocalNotificationService() async {
    await ref
        .read(localNotificationServiceProvider)
        .initialize(onNotificationTap: _handleLocalNotificationTap);
  }

  Future<void> _handleLocalNotificationTap(
    LocalNotificationTapPayload payload,
  ) async {
    await _syncChatRoomsSilently();

    final roomId = _resolveRoomIdFromData(payload.rawData, payload.extraData);
    final handled = await _handleIfAlreadyViewingSameChatRoom(
      typeCode: payload.typeCode,
      roomId: roomId,
    );

    if (handled) {
      return;
    }

    await ref.read(unreadBadgeViewModelProvider.notifier).syncUnreadCount();
    await ref
        .read(deepLinkHandlerProvider)
        .handle(
          typeCode: payload.typeCode,
          rawData: payload.rawData,
          extraData: payload.extraData,
        );
  }

  Future<void> _syncBadgeAndChatState() async {
    if (_isDisposed) return; // dispose된 경우 실행하지 않음

    await _syncChatRoomsSilently();

    if (_isDisposed) return; // 중간에 dispose 체크

    await ref.read(unreadBadgeViewModelProvider.notifier).syncUnreadCount();
  }

  Future<void> _syncChatRoomsSilently() async {
    if (_isDisposed) return; // dispose된 경우 실행하지 않음

    await ref.read(chatListViewModelProvider.notifier).syncLatestRooms();
  }

  Future<bool> _handleIfAlreadyViewingSameChatRoom({
    required String? typeCode,
    required int? roomId,
  }) async {
    final normalized = (typeCode ?? '').trim().toUpperCase();
    if (normalized != 'CHAT_MESSAGE' || roomId == null) {
      return false;
    }

    final currentRoomId = ref
        .read(chatListViewModelProvider.notifier)
        .currentRoomId;
    if (currentRoomId != roomId) {
      return false;
    }

    await ref
        .read(chatRoomViewModelProvider(roomId).notifier)
        .markCurrentRoomAsRead(force: true);
    await ref.read(unreadBadgeViewModelProvider.notifier).syncUnreadCount();
    return true;
  }

  int? _resolveRoomIdFromData(
    Map<String, dynamic>? rawData,
    Map<String, dynamic>? extraData,
  ) {
    int? parse(dynamic value) {
      if (value is int) {
        return value;
      }
      if (value is String) {
        return int.tryParse(value);
      }
      return null;
    }

    final merged = <String, dynamic>{...?rawData, ...?extraData};
    return parse(merged['roomId']) ?? parse(merged['targetId']);
  }

  void _handleForegroundMessage(FcmMessagePayload payload) {
    ref.invalidate(notificationListViewModelProvider);

    if (payload.normalizedType == 'CHAT_MESSAGE') {
      unawaited(_handleForegroundChatMessage(payload));
      return;
    }

    unawaited(_handleForegroundGeneralMessage(payload));
  }

  Future<void> _handleForegroundChatMessage(FcmMessagePayload payload) async {
    await _syncChatRoomsSilently();

    if (_shouldSuppressForegroundBanner(payload)) {
      return;
    }

    final chatPresentation = _buildChatNotificationPresentation(payload);
    await _showForegroundLocalNotification(
      payload,
      chatPresentation: chatPresentation,
    );
  }

  Future<void> _handleForegroundGeneralMessage(
    FcmMessagePayload payload,
  ) async {
    ref.read(unreadBadgeViewModelProvider.notifier).increase();
    await _showForegroundLocalNotification(payload);
  }

  Future<void> _handleOpenedMessage(FcmMessagePayload payload) async {
    await _syncChatRoomsSilently();

    final handled = await _handleIfAlreadyViewingSameChatRoom(
      typeCode: payload.type,
      roomId: payload.roomId,
    );

    if (handled) {
      return;
    }

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

  Future<void> _showForegroundLocalNotification(
    FcmMessagePayload payload, {
    ChatNotificationPresentation? chatPresentation,
  }) async {
    try {
      await ref
          .read(localNotificationServiceProvider)
          .showFromFcm(payload, chatPresentation: chatPresentation);
    } catch (e, stack) {
      AppLogger.e('[LocalNotification] 표시 실패', e, stack);
    }
  }

  ChatNotificationPresentation? _buildChatNotificationPresentation(
    FcmMessagePayload payload,
  ) {
    final roomId = payload.roomId;
    if (roomId == null) {
      return null;
    }

    final room = ref
        .read(chatListViewModelProvider.notifier)
        .findRoomById(roomId);
    if (room == null) {
      return null;
    }

    final message = _resolveChatMessageText(
      payload,
      fallback: room.lastMessage,
    );

    return ChatNotificationPresentation(
      profileImageUrl: room.otherUserProfileImageUrl,
      ticketTitle: room.ticketTitle,
      message: message,
    );
  }

  String _resolveChatMessageText(
    FcmMessagePayload payload, {
    String fallback = '',
  }) {
    final extraJson = payload.parseExtraJson();

    final messageCandidates = [
      payload.rawData['message'],
      payload.rawData['content'],
      payload.rawData['lastMessage'],
      extraJson['message'],
      extraJson['content'],
      extraJson['lastMessage'],
    ];

    for (final candidate in messageCandidates) {
      final text = candidate?.toString().trim() ?? '';
      if (text.isNotEmpty && !_isGenericChatPlaceholder(text)) {
        return text;
      }
    }

    final fallbackText = fallback.trim();
    if (fallbackText.isNotEmpty && !_isGenericChatPlaceholder(fallbackText)) {
      return fallbackText;
    }

    final bodyMessage = (payload.body ?? '').trim();
    if (bodyMessage.isNotEmpty && !_isGenericChatPlaceholder(bodyMessage)) {
      return bodyMessage;
    }

    final rawMessageType = payload.rawData['messageType']?.toString() ?? '';
    final extraMessageType = extraJson['messageType']?.toString() ?? '';
    final messageType = rawMessageType.isNotEmpty
        ? rawMessageType.toUpperCase()
        : extraMessageType.toUpperCase();

    if (messageType == 'IMAGE') {
      return '[이미지]';
    }

    if (fallbackText.isNotEmpty) {
      return fallbackText;
    }

    if (bodyMessage.isNotEmpty) {
      return bodyMessage;
    }

    return fallback;
  }

  bool _isGenericChatPlaceholder(String text) {
    final normalized = text.trim().replaceAll(RegExp(r'\s+'), '');
    return normalized == '채팅방에새로운메시지가있습니다.' ||
        normalized == '채팅방에새로운메시지가있습니다' ||
        normalized == '새로운메시지가있습니다.' ||
        normalized == '새로운메시지가있습니다' ||
        normalized == '새메시지가도착했습니다.' ||
        normalized == '새메시지가도착했습니다';
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
