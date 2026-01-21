import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/chat/data/repositories/chat_repository_impl.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/transaction_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/repositories/chat_repository.dart';

part 'request_payment_usecase.g.dart';

class RequestPaymentParams {
  final int roomId;
  final int transactionId;

  RequestPaymentParams({
    required this.roomId,
    required this.transactionId,
  });
}

class RequestPaymentUsecase {
  final ChatRepository _repository;

  RequestPaymentUsecase(this._repository);

  Future<PaymentRequestEntity> call(RequestPaymentParams params) async {
    return _repository.requestPayment(
      roomId: params.roomId,
      transactionId: params.transactionId,
    );
  }
}

@riverpod
RequestPaymentUsecase requestPaymentUsecase(Ref ref) {
  return RequestPaymentUsecase(ref.watch(chatRepositoryProvider));
}
