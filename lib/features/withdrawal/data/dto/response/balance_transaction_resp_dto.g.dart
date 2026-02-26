// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_transaction_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BalanceTransactionRespDto _$BalanceTransactionRespDtoFromJson(
  Map<String, dynamic> json,
) => _BalanceTransactionRespDto(
  id: (json['id'] as num).toInt(),
  type: json['type'] as String,
  amount: (json['amount'] as num).toInt(),
  balanceAfter: (json['balanceAfter'] as num).toInt(),
  referenceType: json['referenceType'] as String?,
  referenceId: (json['referenceId'] as num?)?.toInt(),
  description: json['description'] as String?,
  createdAt: json['createdAt'] as String?,
);

Map<String, dynamic> _$BalanceTransactionRespDtoToJson(
  _BalanceTransactionRespDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'amount': instance.amount,
  'balanceAfter': instance.balanceAfter,
  'referenceType': instance.referenceType,
  'referenceId': instance.referenceId,
  'description': instance.description,
  'createdAt': instance.createdAt,
};
