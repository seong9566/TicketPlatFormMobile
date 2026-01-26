class PaymentConfirmReqDto {
  final String paymentKey;
  final String orderId;
  final int amount;

  PaymentConfirmReqDto({
    required this.paymentKey,
    required this.orderId,
    required this.amount,
  });

  Map<String, dynamic> toMap() {
    return {'paymentKey': paymentKey, 'orderId': orderId, 'amount': amount};
  }
}
