import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/chat/data/repositories/chat_repository_impl.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/message_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/repositories/chat_repository.dart';

part 'send_message_usecase.g.dart';

class SendMessageParams {
  final int roomId;
  final String? message;
  final File? imageFile;

  SendMessageParams({
    required this.roomId,
    this.message,
    this.imageFile,
  });
}

class SendMessageUsecase {
  final ChatRepository _repository;

  SendMessageUsecase(this._repository);

  Future<MessageEntity> call(SendMessageParams params) async {
    return _repository.sendMessage(
      roomId: params.roomId,
      message: params.message,
      imageFile: params.imageFile,
    );
  }
}

@riverpod
SendMessageUsecase sendMessageUsecase(Ref ref) {
  return SendMessageUsecase(ref.watch(chatRepositoryProvider));
}
