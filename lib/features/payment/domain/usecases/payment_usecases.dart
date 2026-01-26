import 'package:ticket_platform_mobile/features/payment/data/dto/request/payment_confirm_req_dto.dart';
import 'package:ticket_platform_mobile/features/payment/data/dto/request/payment_request_req_dto.dart';
import 'package:ticket_platform_mobile/features/payment/domain/entities/payment_entities.dart';
import 'package:ticket_platform_mobile/features/payment/domain/repositories/payment_repository.dart';

class RequestPaymentUseCase {
  final PaymentRepository _repository;

  RequestPaymentUseCase(this._repository);

  Future<PaymentRequestEntity> call(PaymentRequestReqDto req) {
    return _repository.requestPayment(req);
  }
}

class ConfirmPaymentUseCase {
  final PaymentRepository _repository;

  ConfirmPaymentUseCase(this._repository);

  Future<PaymentConfirmEntity> call(PaymentConfirmReqDto req) {
    return _repository.confirmPayment(req);
  }
}

class CancelPaymentUseCase {
  final PaymentRepository _repository;

  CancelPaymentUseCase(this._repository);

  Future<bool> call(int transactionId, String reason) {
    return _repository.cancelPayment(transactionId, reason);
  }
}
