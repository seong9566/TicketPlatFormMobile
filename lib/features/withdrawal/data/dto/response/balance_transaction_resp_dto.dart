import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/entities/balance_transaction_entity.dart';

part 'balance_transaction_resp_dto.freezed.dart';
part 'balance_transaction_resp_dto.g.dart';

@freezed
abstract class BalanceTransactionRespDto with _$BalanceTransactionRespDto {
  const factory BalanceTransactionRespDto({
    required int id,
    required String type,
    required int amount,
    required int balanceAfter,
    String? referenceType,
    int? referenceId,
    String? description,
    String? createdAt,
  }) = _BalanceTransactionRespDto;

  factory BalanceTransactionRespDto.fromJson(Map<String, dynamic> json) =>
      _$BalanceTransactionRespDtoFromJson(json);
}

extension BalanceTransactionRespDtoX on BalanceTransactionRespDto {
  BalanceTransactionEntity toEntity() {
    return BalanceTransactionEntity(
      id: id,
      type: type,
      amount: amount,
      balanceAfter: balanceAfter,
      referenceType: referenceType,
      referenceId: referenceId,
      description: description,
      createdAt: createdAt != null ? DateTime.tryParse(createdAt!) : null,
    );
  }
}
