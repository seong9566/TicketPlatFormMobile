import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/chat/data/repositories/chat_repository_impl.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/chat_room_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/repositories/chat_repository.dart';

part 'get_chat_rooms_usecase.g.dart';

class GetChatRoomsUsecase {
  final ChatRepository _repository;

  GetChatRoomsUsecase(this._repository);

  Future<List<ChatRoomListItemEntity>> call({
    int page = 1,
    int pageSize = 20,
  }) async {
    return _repository.getChatRooms(page: page, pageSize: pageSize);
  }
}

@riverpod
GetChatRoomsUsecase getChatRoomsUsecase(Ref ref) {
  return GetChatRoomsUsecase(ref.watch(chatRepositoryProvider));
}
