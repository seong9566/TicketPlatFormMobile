import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/chat/data/repositories/chat_repository_impl.dart';
import 'package:ticket_platform_mobile/features/chat/domain/repositories/chat_repository.dart';

part 'cancel_transaction_usecase.g.dart';

class CancelTransactionParams {
  final int roomId;
  final int transactionId;
  final String cancelReason;

  CancelTransactionParams({
    required this.roomId,
    required this.transactionId,
    required this.cancelReason,
  });
}

class CancelTransactionUsecase {
  final ChatRepository _repository;

  CancelTransactionUsecase(this._repository);

  Future<void> call(CancelTransactionParams params) async {
    return _repository.cancelTransaction(
      roomId: params.roomId,
      transactionId: params.transactionId,
      cancelReason: params.cancelReason,
    );
  }
}

@riverpod
CancelTransactionUsecase cancelTransactionUsecase(Ref ref) {
  return CancelTransactionUsecase(ref.watch(chatRepositoryProvider));
}
