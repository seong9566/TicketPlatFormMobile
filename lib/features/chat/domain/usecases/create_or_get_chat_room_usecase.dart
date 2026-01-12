import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/chat/data/repositories/chat_repository_impl.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/chat_room_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/repositories/chat_repository.dart';

part 'create_or_get_chat_room_usecase.g.dart';

class CreateOrGetChatRoomUsecase {
  final ChatRepository _repository;

  CreateOrGetChatRoomUsecase(this._repository);

  Future<ChatRoomEntity> call(int ticketId) async {
    return _repository.createOrGetChatRoom(ticketId);
  }
}

@riverpod
CreateOrGetChatRoomUsecase createOrGetChatRoomUsecase(Ref ref) {
  return CreateOrGetChatRoomUsecase(ref.watch(chatRepositoryProvider));
}
