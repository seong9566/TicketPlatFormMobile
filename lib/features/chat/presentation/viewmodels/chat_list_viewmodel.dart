import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/chat/domain/usecases/get_chat_rooms_usecase.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/ui_models/chat_room_ui_model.dart';

part 'chat_list_viewmodel.g.dart';

@riverpod
class ChatListViewModel extends _$ChatListViewModel {
  int _currentPage = 1;
  static const int _pageSize = 20;
  bool _hasMore = true;

  @override
  FutureOr<List<ChatRoomListUiModel>> build() async {
    _currentPage = 1;
    _hasMore = true;
    return _fetchChatRooms();
  }

  Future<List<ChatRoomListUiModel>> _fetchChatRooms() async {
    final entities = await ref
        .read(getChatRoomsUsecaseProvider)
        .call(page: _currentPage, pageSize: _pageSize);
    _hasMore = entities.length >= _pageSize;
    return entities.map(ChatRoomListUiModel.fromEntity).toList();
  }

  Future<void> refresh() async {
    _currentPage = 1;
    _hasMore = true;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchChatRooms());
  }

  Future<void> loadMore() async {
    if (!_hasMore) return;

    final currentList = state.value ?? [];
    _currentPage++;

    try {
      final moreItems = await _fetchChatRooms();
      state = AsyncValue.data([...currentList, ...moreItems]);
    } catch (e, stack) {
      _currentPage--;
      state = AsyncValue.error(e, stack);
    }
  }

  bool get hasMore => _hasMore;
}
