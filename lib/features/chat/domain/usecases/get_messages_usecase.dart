import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/chat/data/repositories/chat_repository_impl.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/message_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/repositories/chat_repository.dart';

part 'get_messages_usecase.g.dart';

class GetMessagesParams {
  final int roomId;
  final int? lastMessageId;
  final int limit;

  GetMessagesParams({
    required this.roomId,
    this.lastMessageId,
    this.limit = 50,
  });
}

class GetMessagesUsecase {
  final ChatRepository _repository;

  GetMessagesUsecase(this._repository);

  Future<List<MessageEntity>> call(GetMessagesParams params) async {
    return _repository.getMessages(
      roomId: params.roomId,
      lastMessageId: params.lastMessageId,
      limit: params.limit,
    );
  }
}

@riverpod
GetMessagesUsecase getMessagesUsecase(Ref ref) {
  return GetMessagesUsecase(ref.watch(chatRepositoryProvider));
}
