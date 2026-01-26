class PaymentRequestReqDto {
  final int transactionId;
  final int amount;
  final String orderName;
  final String customerName;
  final String customerEmail;

  PaymentRequestReqDto({
    required this.transactionId,
    required this.amount,
    required this.orderName,
    required this.customerName,
    required this.customerEmail,
  });

  Map<String, dynamic> toMap() {
    return {
      'transactionId': transactionId,
      'amount': amount,
      'orderName': orderName,
      'customerName': customerName,
      'customerEmail': customerEmail,
    };
  }
}
