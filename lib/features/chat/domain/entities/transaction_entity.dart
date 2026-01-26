import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_entity.freezed.dart';

enum TransactionStatus {
  @JsonValue('reserved')
  reserved,
  @JsonValue('pending_payment')
  pendingPayment,
  @JsonValue('paid')
  paid,
  @JsonValue('confirmed')
  confirmed,
  @JsonValue('completed')
  completed,
  @JsonValue('cancelled')
  cancelled,
  @JsonValue('refunded')
  refunded;

  bool get isPaymentPending => this == TransactionStatus.pendingPayment;
  bool get isPaid => this == TransactionStatus.paid;
  bool get isConfirmed => this == TransactionStatus.confirmed;
  bool get isCancelled => this == TransactionStatus.cancelled;
}

@freezed
abstract class TransactionEntity with _$TransactionEntity {
  const factory TransactionEntity({
    required int transactionId,
    required TransactionStatus status,
    required String statusName,
    DateTime? confirmedAt,
    DateTime? cancelledAt,
  }) = _TransactionEntity;
}

@freezed
abstract class PaymentRequestEntity with _$PaymentRequestEntity {
  const factory PaymentRequestEntity({
    required String paymentUrl,
    required int transactionId,
    required int amount,
  }) = _PaymentRequestEntity;
}

@freezed
abstract class PurchaseConfirmEntity with _$PurchaseConfirmEntity {
  const factory PurchaseConfirmEntity({
    required int transactionId,
    required DateTime confirmedAt,
    required bool success,
  }) = _PurchaseConfirmEntity;
}
