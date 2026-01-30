import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_entities.freezed.dart';

@freezed
abstract class PaymentRequestEntity with _$PaymentRequestEntity {
  const factory PaymentRequestEntity({
    required String orderId,
    required int amount,
    required String orderName,
    String? customerName,
    String? customerEmail,
    required String successUrl,
    required String failUrl,
    String? eventTitle,
    String? eventDate,
    String? seatInfo,
    String? ticketImageUrl,
    String? venueName,
  }) = _PaymentRequestEntity;
}

@freezed
abstract class PaymentConfirmEntity with _$PaymentConfirmEntity {
  const factory PaymentConfirmEntity({
    required String paymentKey,
    required String orderId,
    required String orderName,
    required String status,
    required DateTime requestedAt,
    DateTime? approvedAt,
    required String method,
    required int totalAmount,
    required int balanceAmount,
  }) = _PaymentConfirmEntity;
}
