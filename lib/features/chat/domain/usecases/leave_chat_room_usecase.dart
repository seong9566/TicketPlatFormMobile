import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/chat/data/repositories/chat_repository_impl.dart';
import 'package:ticket_platform_mobile/features/chat/domain/repositories/chat_repository.dart';

part 'leave_chat_room_usecase.g.dart';

class LeaveChatRoomParams {
  final int roomId;

  LeaveChatRoomParams({required this.roomId});
}

class LeaveChatRoomUsecase {
  final ChatRepository _repository;

  LeaveChatRoomUsecase(this._repository);

  Future<void> call(LeaveChatRoomParams params) async {
    return _repository.leaveRoom(roomId: params.roomId);
  }
}

@riverpod
LeaveChatRoomUsecase leaveChatRoomUsecase(Ref ref) {
  return LeaveChatRoomUsecase(ref.watch(chatRepositoryProvider));
}
