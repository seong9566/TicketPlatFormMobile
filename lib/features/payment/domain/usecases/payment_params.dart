class RequestPaymentParams {
  final int transactionId;
  final int amount;
  final String orderName;
  final String customerName;
  final String customerEmail;
  final String? eventTitle;
  final String? eventDate;
  final String? seatInfo;
  final String? ticketImageUrl;
  final String? venueName;

  RequestPaymentParams({
    required this.transactionId,
    required this.amount,
    required this.orderName,
    required this.customerName,
    required this.customerEmail,
    this.eventTitle,
    this.eventDate,
    this.seatInfo,
    this.ticketImageUrl,
    this.venueName,
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
