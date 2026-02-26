// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WithdrawalRespDto _$WithdrawalRespDtoFromJson(Map<String, dynamic> json) =>
    _WithdrawalRespDto(
      id: (json['id'] as num).toInt(),
      amount: (json['amount'] as num).toInt(),
      fee: (json['fee'] as num).toInt(),
      netAmount: (json['netAmount'] as num).toInt(),
      statusCode: json['statusCode'] as String,
      statusName: json['statusName'] as String,
      bankName: json['bankName'] as String?,
      requestedAt: json['requestedAt'] as String,
      processedAt: json['processedAt'] as String?,
      failureReason: json['failureReason'] as String?,
    );

Map<String, dynamic> _$WithdrawalRespDtoToJson(_WithdrawalRespDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'fee': instance.fee,
      'netAmount': instance.netAmount,
      'statusCode': instance.statusCode,
      'statusName': instance.statusName,
      'bankName': instance.bankName,
      'requestedAt': instance.requestedAt,
      'processedAt': instance.processedAt,
      'failureReason': instance.failureReason,
    };
