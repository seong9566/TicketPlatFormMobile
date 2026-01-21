import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/chat/data/repositories/chat_repository_impl.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/transaction_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/repositories/chat_repository.dart';

part 'confirm_purchase_usecase.g.dart';

class ConfirmPurchaseParams {
  final int roomId;
  final int transactionId;

  ConfirmPurchaseParams({
    required this.roomId,
    required this.transactionId,
  });
}

class ConfirmPurchaseUsecase {
  final ChatRepository _repository;

  ConfirmPurchaseUsecase(this._repository);

  Future<PurchaseConfirmEntity> call(ConfirmPurchaseParams params) async {
    return _repository.confirmPurchase(
      roomId: params.roomId,
      transactionId: params.transactionId,
    );
  }
}

@riverpod
ConfirmPurchaseUsecase confirmPurchaseUsecase(Ref ref) {
  return ConfirmPurchaseUsecase(ref.watch(chatRepositoryProvider));
}
