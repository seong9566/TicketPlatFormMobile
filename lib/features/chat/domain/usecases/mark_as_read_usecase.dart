import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/chat/data/repositories/chat_repository_impl.dart';
import 'package:ticket_platform_mobile/features/chat/domain/repositories/chat_repository.dart';

part 'mark_as_read_usecase.g.dart';

class MarkAsReadUsecase {
  final ChatRepository _repository;

  MarkAsReadUsecase(this._repository);

  Future<void> call(int roomId) async {
    return _repository.markAsRead(roomId);
  }
}

@riverpod
MarkAsReadUsecase markAsReadUsecase(Ref ref) {
  return MarkAsReadUsecase(ref.watch(chatRepositoryProvider));
}
