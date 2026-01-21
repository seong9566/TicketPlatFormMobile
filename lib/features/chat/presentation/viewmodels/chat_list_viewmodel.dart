import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/storage/token_storage.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/chat/data/datasources/chat_event_bus.dart';
import 'package:ticket_platform_mobile/features/chat/data/datasources/chat_signalr_data_source.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/message_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/events/chat_message_event.dart';
import 'package:ticket_platform_mobile/features/chat/domain/usecases/get_chat_rooms_usecase.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/ui_models/chat_room_ui_model.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/viewmodels/profile_viewmodel.dart';

part 'chat_list_viewmodel.g.dart';

@riverpod
class ChatListViewModel extends _$ChatListViewModel {
  int _currentPage = 1;
  static const int _pageSize = 20;
  bool _hasMore = true;
  String _searchQuery = '';
  List<ChatRoomListUiModel> _allChatRooms = [];
  Timer? _debounceTimer;
  StreamSubscription<MessageEntity>? _messageSubscription;
  StreamSubscription<RoomUpdatedEvent>? _roomUpdatedSubscription;
  StreamSubscription<ChatMessageEvent>? _messageSentSubscription;

  @override
  FutureOr<List<ChatRoomListUiModel>> build() async {
    _currentPage = 1;
    _hasMore = true;
    _searchQuery = '';

    // Dispose 시 리스너 정리
    ref.onDispose(() {
      _messageSubscription?.cancel();
      _roomUpdatedSubscription?.cancel();
      _messageSentSubscription?.cancel();
      _debounceTimer?.cancel();
    });

    // SignalR 연결 (채팅 기능 사용 시 연결)
    await _connectSignalR();

    // SignalR 리스너 설정
    _setupSignalRListeners();

    // Event Bus 구독
    _setupEventBusListener();

    return _fetchChatRooms();
  }

  Future<List<ChatRoomListUiModel>> _fetchChatRooms() async {
    final entities = await ref
        .read(getChatRoomsUsecaseProvider)
        .call(page: _currentPage, pageSize: _pageSize);
    _hasMore = entities.length >= _pageSize;
    final uiModels = entities.map(ChatRoomListUiModel.fromEntity).toList();
    _allChatRooms = uiModels;
    return uiModels;
  }

  Future<void> refresh() async {
    _currentPage = 1;
    _hasMore = true;
    _searchQuery = '';
    _debounceTimer?.cancel();
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchChatRooms());
  }

  Future<void> loadMore() async {
    if (!_hasMore) return;
    // Don't load more while searching - search only filters existing data
    if (_searchQuery.isNotEmpty) return;

    _currentPage++;

    try {
      final moreItems = await _fetchChatRooms();
      _allChatRooms = [..._allChatRooms, ...moreItems];
      // Reapply filter in case search query exists
      _filterChatRooms();
    } catch (e, stack) {
      _currentPage--;
      state = AsyncValue.error(e, stack);
    }
  }

  void updateSearchQuery(String query) {
    _searchQuery = query.trim().toLowerCase();

    // Cancel previous timer if exists
    _debounceTimer?.cancel();

    // Debounce search filtering for better performance with large lists
    _debounceTimer = Timer(const Duration(milliseconds: 200), () {
      _filterChatRooms();
    });
  }

  void _filterChatRooms() {
    if (_searchQuery.isEmpty) {
      state = AsyncValue.data(_allChatRooms);
    } else {
      final filtered = _allChatRooms.where((room) {
        final titleMatch = room.ticketTitle.toLowerCase().contains(
          _searchQuery,
        );
        final nicknameMatch = room.otherUserNickname.toLowerCase().contains(
          _searchQuery,
        );
        return titleMatch || nicknameMatch;
      }).toList();
      state = AsyncValue.data(filtered);
    }
  }

  bool get hasMore => _hasMore;

  /// SignalR 실시간 이벤트 리스너 설정
  void _setupSignalRListeners() {
    try {
      final signalR = ref.read(chatSignalRDataSourceProvider);

      // Cancel existing subscriptions to prevent memory leaks
      _messageSubscription?.cancel();
      _roomUpdatedSubscription?.cancel();

      // 새 메시지 수신 시 채팅방 목록 새로고침
      _messageSubscription = signalR.onReceiveMessage.listen((message) {
        _handleNewMessage(message);
      });

      // 채팅방 업데이트 이벤트 (거래 상태 변경 등)
      _roomUpdatedSubscription = signalR.onRoomUpdated.listen((event) {
        _handleRoomUpdate(event);
      });
    } catch (e) {
      AppLogger.e('Error setting up SignalR listeners in ChatListViewModel', e);
    }
  }

  /// 새 메시지 수신 시 해당 채팅방의 마지막 메시지 업데이트
  void _handleNewMessage(MessageEntity message) {
    final roomId = message.roomId;
    final index = _allChatRooms.indexWhere((room) => room.roomId == roomId);

    if (index == -1) {
      // 새로운 채팅방이면 목록 전체 새로고침
      refresh();
      return;
    }

    final existingRoom = _allChatRooms[index];

    // 본인 메시지 여부 재판정 (SignalR에서 온 메시지는 기본적으로 false이므로 senderId로 한 번 더 체크)
    final currentUserId = ref
        .read(profileViewModelProvider)
        .value
        ?.profile
        ?.userId;
    final isMyMessage =
        message.isMyMessage ||
        (currentUserId != null && message.senderId == currentUserId);

    // 해당 채팅방의 마지막 메시지와 시간 업데이트
    final updatedRoom = ChatRoomListUiModel(
      roomId: existingRoom.roomId,
      ticketId: existingRoom.ticketId,
      ticketTitle: existingRoom.ticketTitle,
      otherUserNickname: existingRoom.otherUserNickname,
      otherUserProfileImageUrl: existingRoom.otherUserProfileImageUrl,
      lastMessage: message.message ?? (message.imageUrl != null ? '[이미지]' : ''),
      timeDisplay: _formatTime(message.createdAt),
      // 본인이 보낸 메시지가 아니면 읽지 않은 메시지 카운트 증가
      unreadCount: isMyMessage
          ? existingRoom.unreadCount
          : existingRoom.unreadCount + 1,
      roomStatusCode: existingRoom.roomStatusCode,
      roomStatusName: existingRoom.roomStatusName,
      transactionId: existingRoom.transactionId,
      transactionStatusCode: existingRoom.transactionStatusCode,
      transactionStatusName: existingRoom.transactionStatusName,
    );

    // 업데이트된 채팅방을 맨 위로 이동
    _allChatRooms = [
      updatedRoom,
      ..._allChatRooms.where((room) => room.roomId != roomId),
    ];

    // 검색 필터 재적용
    _filterChatRooms();
  }

  /// 시간 포맷팅 (ChatRoomListUiModel._formatTime과 동일)
  String _formatTime(DateTime dateTime) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final messageDate = DateTime(dateTime.year, dateTime.month, dateTime.day);

    if (messageDate == today) {
      final hour = dateTime.hour;
      final minute = dateTime.minute.toString().padLeft(2, '0');
      final period = hour < 12 ? '오전' : '오후';
      final displayHour = hour == 0 ? 12 : (hour > 12 ? hour - 12 : hour);
      return '$period $displayHour:$minute';
    } else if (messageDate == yesterday) {
      return '어제';
    } else if (now.difference(dateTime).inDays < 7) {
      const weekdays = ['월', '화', '수', '목', '금', '토', '일'];
      return '${weekdays[dateTime.weekday - 1]}요일';
    } else {
      return '${dateTime.month}월${dateTime.day}일';
    }
  }

  /// 채팅방 업데이트 이벤트 처리 (거래 상태 변경 등)
  void _handleRoomUpdate(RoomUpdatedEvent event) {
    AppLogger.i('Room updated in list: ${event.event}');
    // 전체 목록 새로고침
    refresh();
  }

  /// Event Bus 리스너 설정
  /// - 자신이 다른 화면에서 보낸 메시지도 목록에 반영
  void _setupEventBusListener() {
    _messageSentSubscription?.cancel();

    _messageSentSubscription = ref
        .read(chatEventBusProvider)
        .onMessageSent
        .listen((event) {
          AppLogger.i(
            'Message sent event received in list: ${event.message.messageId}',
          );
          // 기존 _handleNewMessage 로직 재사용
          _handleNewMessage(event.message);
        });
  }

  /// SignalR 연결
  /// - 채팅 목록 화면 진입 시 자동 연결
  /// - 이미 연결되어 있으면 재연결하지 않음
  Future<void> _connectSignalR() async {
    try {
      final signalR = ref.read(chatSignalRDataSourceProvider);

      // 이미 연결되어 있으면 스킵
      if (signalR.isConnected) {
        AppLogger.i('✅ SignalR already connected');
        return;
      }

      AppLogger.i('🔌 Attempting to connect SignalR...');

      // 토큰 가져오기
      final tokenStorage = ref.read(tokenStorageProvider);
      final accessToken = await tokenStorage.getAccessToken();

      if (accessToken == null || accessToken.isEmpty) {
        AppLogger.w('⚠️ No access token found, cannot connect SignalR');
        return;
      }

      // SignalR 연결
      await signalR.connect(accessToken);
      AppLogger.i('✅ SignalR connected successfully');
    } catch (e, stack) {
      AppLogger.e('❌ Failed to connect SignalR', e, stack);
      // 연결 실패해도 채팅 목록은 볼 수 있어야 하므로 에러를 던지지 않음
    }
  }
}
