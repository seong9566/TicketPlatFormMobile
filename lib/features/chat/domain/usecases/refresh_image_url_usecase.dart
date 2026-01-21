import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/chat/data/repositories/chat_repository_impl.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/message_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/repositories/chat_repository.dart';

part 'refresh_image_url_usecase.g.dart';

class RefreshImageUrlUsecase {
  final ChatRepository _repository;

  RefreshImageUrlUsecase(this._repository);

  Future<ImageUrlRefreshEntity> call(int messageId) async {
    return _repository.refreshImageUrl(messageId);
  }
}

@riverpod
RefreshImageUrlUsecase refreshImageUrlUsecase(Ref ref) {
  return RefreshImageUrlUsecase(ref.watch(chatRepositoryProvider));
}
