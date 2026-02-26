import 'package:freezed_annotation/freezed_annotation.dart';

part 'balance_transaction_entity.freezed.dart';

@freezed
abstract class BalanceTransactionEntity with _$BalanceTransactionEntity {
  const factory BalanceTransactionEntity({
    required int id,
    required String type,
    required int amount,
    required int balanceAfter,
    String? referenceType,
    int? referenceId,
    String? description,
    DateTime? createdAt,
  }) = _BalanceTransactionEntity;
}
