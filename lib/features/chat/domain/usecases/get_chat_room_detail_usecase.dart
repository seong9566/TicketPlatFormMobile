import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/chat/data/repositories/chat_repository_impl.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/chat_room_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/repositories/chat_repository.dart';

part 'get_chat_room_detail_usecase.g.dart';

class GetChatRoomDetailUsecase {
  final ChatRepository _repository;

  GetChatRoomDetailUsecase(this._repository);

  Future<ChatRoomEntity> call(int roomId) async {
    return _repository.getChatRoomDetail(roomId);
  }
}

@riverpod
GetChatRoomDetailUsecase getChatRoomDetailUsecase(Ref ref) {
  return GetChatRoomDetailUsecase(ref.watch(chatRepositoryProvider));
}
