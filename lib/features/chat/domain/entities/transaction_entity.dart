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
