import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/storage/token_storage.dart';
import 'package:ticket_platform_mobile/core/utils/date_format_util.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/chat/data/datasources/chat_event_bus.dart';
import 'package:ticket_platform_mobile/features/chat/data/datasources/chat_signalr_data_source.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/message_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/events/chat_message_event.dart';
import 'package:ticket_platform_mobile/features/chat/domain/usecases/get_chat_rooms_usecase.dart';
import 'package:ticket_platform_mobile/features/chat/domain/usecases/leave_chat_room_usecase.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/ui_models/chat_room_ui_model.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/viewmodels/profile_viewmodel.dart';

part 'chat_list_viewmodel.g.dart';

// 실시간 새로운 메시지 확인 위해 keepAlive
@Riverpod(keepAlive: true)
class ChatListViewModel extends _$ChatListViewModel {
  int _currentPage = 1;
  static const int _pageSize = 20;
  bool _hasMore = true;
  String _searchQuery = '';
  List<ChatRoomListUiModel> _allChatRooms = []; // 전체 채팅방 목록 (필터링 전)
  final Set<int> _receivedMessageIds = {}; // 중복 메시지 방지용
  int? _currentlyViewingRoomId; // 현재 보고 있는 채팅방 ID (해당 방은 unread 증가 안함)
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

  /// 전체 읽지 않은 메시지 수
  int get totalUnreadCount {
    final rooms = state.value;
    if (rooms == null) return 0;

    return rooms.fold<int>(0, (sum, room) => sum + room.unreadCount);
  }

  /// 현재 보고 있는 채팅방 ID 설정
  /// - 채팅방 입장 시 roomId 설정, 퇴장 시 null 설정
  /// - 해당 방의 메시지는 unreadCount 증가 안함
  /// - state 수정 없이 내부 필드만 변경하므로 dispose에서도 안전
  void setCurrentRoomId(int? roomId) {
    _currentlyViewingRoomId = roomId;
    AppLogger.i('👁️ Currently viewing room: $roomId');
  }

  /// 특정 채팅방의 읽지 않은 메시지 수를 0으로 초기화
  /// - 채팅방 퇴장 시 호출되어 읽음 처리를 UI에 반영
  void resetUnreadCount(int roomId) {
    final index = _allChatRooms.indexWhere((room) => room.roomId == roomId);
    if (index == -1) {
      AppLogger.d('Room $roomId not found in list, skipping resetUnreadCount');
      return;
    }

    final room = _allChatRooms[index];
    if (room.unreadCount == 0) {
      AppLogger.d('Room $roomId already has unreadCount = 0');
      return; // 이미 0이면 불필요한 업데이트 방지
    }

    final updatedRoom = ChatRoomListUiModel(
      roomId: room.roomId,
      ticketId: room.ticketId,
      ticketTitle: room.ticketTitle,
      otherUserNickname: room.otherUserNickname,
      otherUserProfileImageUrl: room.otherUserProfileImageUrl,
      lastMessage: room.lastMessage,
      timeDisplay: room.timeDisplay,
      unreadCount: 0, // 읽음 처리
      roomStatusCode: room.roomStatusCode,
      roomStatusName: room.roomStatusName,
      transactionId: room.transactionId,
      transactionStatusCode: room.transactionStatusCode,
      transactionStatusName: room.transactionStatusName,
    );
    _allChatRooms[index] = updatedRoom;

    _filterChatRooms(); // 검색 필터 재적용 및 state 업데이트
    AppLogger.i(
      '✅ Reset unreadCount for room $roomId (was ${room.unreadCount})',
    );
  }

  /// 채팅방 나가기
  Future<bool> leaveRoom(int roomId) async {
    try {
      await ref
          .read(leaveChatRoomUsecaseProvider)
          .call(LeaveChatRoomParams(roomId: roomId));

      _allChatRooms = _allChatRooms
          .where((room) => room.roomId != roomId)
          .toList();
      _filterChatRooms();
      return true;
    } catch (e, stack) {
      AppLogger.e('Error leaving room $roomId', e, stack);
      return false;
    }
  }

  /// SignalR 실시간 이벤트 리스너 설정
  void _setupSignalRListeners() {
    AppLogger.i('🎧 Setting up SignalR listeners in ChatListViewModel...');

    try {
      final signalR = ref.read(chatSignalRDataSourceProvider);

      // Cancel existing subscriptions to prevent memory leaks
      _messageSubscription?.cancel();
      _roomUpdatedSubscription?.cancel();

      AppLogger.i('🎧 Subscribing to onReceiveMessage stream...');

      // 새 메시지 수신 시 채팅방 목록 새로고침
      _messageSubscription = signalR.onReceiveMessage.listen((message) {
        AppLogger.i('🎧 onReceiveMessage listener triggered!');
        _handleNewMessage(message);
      });

      AppLogger.i('🎧 Subscribing to onRoomUpdated stream...');

      // 채팅방 업데이트 이벤트 (거래 상태 변경 등)
      _roomUpdatedSubscription = signalR.onRoomUpdated.listen((event) {
        AppLogger.i('🎧 onRoomUpdated listener triggered!');
        _handleRoomUpdate(event);
      });

      AppLogger.i('🎧 ✅ SignalR listeners setup complete!');
    } catch (e) {
      AppLogger.e('Error setting up SignalR listeners in ChatListViewModel', e);
    }
  }

  /// 새 메시지 수신 시 해당 채팅방의 마지막 메시지 업데이트
  void _handleNewMessage(MessageEntity message) {
    AppLogger.i(
      '📨 ChatListViewModel: New message received! roomId=${message.roomId}, messageId=${message.messageId}',
    );

    // 중복 메시지 체크: room_{roomId} + user_{userId} 두 그룹에서 수신할 수 있음
    if (_receivedMessageIds.contains(message.messageId)) {
      AppLogger.i('📌 Duplicate message ignored: ${message.messageId}');
      return;
    }
    _receivedMessageIds.add(message.messageId);

    final roomId = message.roomId;
    final index = _allChatRooms.indexWhere((room) => room.roomId == roomId);

    AppLogger.i(
      '📨 Current rooms count: ${_allChatRooms.length}, Found index: $index',
    );

    if (index == -1) {
      // 새로운 채팅방이면 목록 전체 새로고침
      AppLogger.i('📨 New room detected, refreshing entire list');
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
    // 마지막 메시지 텍스트 결정
    String lastMessageText = message.message ?? '';
    if (lastMessageText.isEmpty) {
      // 텍스트가 없으면 이미지 개수 표시
      if (message.images != null && message.images!.isNotEmpty) {
        lastMessageText = message.images!.length > 1
            ? '[이미지 ${message.images!.length}장]'
            : '[이미지]';
      }
    }

    final updatedRoom = ChatRoomListUiModel(
      roomId: existingRoom.roomId,
      ticketId: existingRoom.ticketId,
      ticketTitle: existingRoom.ticketTitle,
      otherUserNickname: existingRoom.otherUserNickname,
      otherUserProfileImageUrl: existingRoom.otherUserProfileImageUrl,
      lastMessage: lastMessageText,
      timeDisplay: DateFormatUtil.formatChatTime(message.createdAt),
      // 본인이 보낸 메시지가 아니고, 현재 보고 있는 채팅방이 아니면 unreadCount 증가
      unreadCount: isMyMessage || roomId == _currentlyViewingRoomId
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

    AppLogger.i(
      '📨 Room updated: roomId=$roomId, unreadCount=${updatedRoom.unreadCount}, lastMessage="${updatedRoom.lastMessage}"',
    );

    // 검색 필터 재적용
    _filterChatRooms();

    AppLogger.i('📨 State updated! Total rooms: ${_allChatRooms.length}');
  }

  /// 시간 포맷팅 (ChatRoomListUiModel._formatTime과 동일)

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
