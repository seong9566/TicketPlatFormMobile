import 'package:ticket_platform_mobile/features/payment/domain/entities/payment_entities.dart';
import 'package:ticket_platform_mobile/features/payment/domain/repositories/payment_repository.dart';
import 'package:ticket_platform_mobile/features/payment/domain/usecases/payment_params.dart';

class RequestPaymentUseCase {
  final PaymentRepository _repository;

  RequestPaymentUseCase(this._repository);

  Future<PaymentRequestEntity> call(RequestPaymentParams params) {
    return _repository.requestPayment(params);
  }
}

class ConfirmPaymentUseCase {
  final PaymentRepository _repository;

  ConfirmPaymentUseCase(this._repository);

  Future<PaymentConfirmEntity> call(ConfirmPaymentParams params) {
    return _repository.confirmPayment(params);
  }
}

class CancelPaymentUseCase {
  final PaymentRepository _repository;

  CancelPaymentUseCase(this._repository);

  Future<bool> call(int transactionId, String reason) {
    return _repository.cancelPayment(transactionId, reason);
  }
}
