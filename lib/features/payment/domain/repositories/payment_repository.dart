import 'package:ticket_platform_mobile/features/payment/domain/entities/payment_entities.dart';
import 'package:ticket_platform_mobile/features/payment/domain/usecases/payment_params.dart';

abstract class PaymentRepository {
  Future<PaymentRequestEntity> requestPayment(RequestPaymentParams params);
  Future<PaymentConfirmEntity> confirmPayment(ConfirmPaymentParams params);
  Future<bool> cancelPayment(int transactionId, String reason);
}
