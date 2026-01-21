import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_entity.freezed.dart';

@freezed
abstract class TransactionEntity with _$TransactionEntity {
  const factory TransactionEntity({
    required int transactionId,
    required String statusCode,
    required String statusName,
    required int amount,
    String? paymentUrl,
    DateTime? confirmedAt,
    String? cancelReason,
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
