class RequestPaymentParams {
  final int transactionId;
  final int amount;
  final String orderName;
  final String customerName;
  final String customerEmail;

  RequestPaymentParams({
    required this.transactionId,
    required this.amount,
    required this.orderName,
    required this.customerName,
    required this.customerEmail,
  });
}

class ConfirmPaymentParams {
  final String paymentKey;
  final String orderId;
  final int amount;

  ConfirmPaymentParams({
    required this.paymentKey,
    required this.orderId,
    required this.amount,
  });
}
