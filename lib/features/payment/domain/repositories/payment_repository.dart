import 'package:ticket_platform_mobile/features/payment/domain/entities/payment_entities.dart';
import 'package:ticket_platform_mobile/features/payment/data/dto/request/payment_request_req_dto.dart';
import 'package:ticket_platform_mobile/features/payment/data/dto/request/payment_confirm_req_dto.dart';

abstract class PaymentRepository {
  Future<PaymentRequestEntity> requestPayment(PaymentRequestReqDto req);
  Future<PaymentConfirmEntity> confirmPayment(PaymentConfirmReqDto req);
  Future<bool> cancelPayment(int transactionId, String reason);
}
