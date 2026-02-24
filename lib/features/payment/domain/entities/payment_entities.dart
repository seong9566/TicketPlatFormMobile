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
    required String clientKey,
    PaymentTicketInfoEntity? ticketInfo,
    PaymentEventInfoEntity? eventInfo,
  }) = _PaymentRequestEntity;
}

@freezed
abstract class PaymentTicketInfoEntity with _$PaymentTicketInfoEntity {
  const factory PaymentTicketInfoEntity({
    int? ticketId,
    String? thumbnailUrl,
    String? seatInfo,
    int? quantity,
    int? unitPrice,
    int? totalAmount,
  }) = _PaymentTicketInfoEntity;
}

@freezed
abstract class PaymentEventInfoEntity with _$PaymentEventInfoEntity {
  const factory PaymentEventInfoEntity({
    int? eventId,
    String? title,
    String? eventDateTime,
    String? venueName,
  }) = _PaymentEventInfoEntity;
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
