// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settlement_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SettlementRespDto _$SettlementRespDtoFromJson(Map<String, dynamic> json) =>
    _SettlementRespDto(
      id: (json['id'] as num).toInt(),
      transactionId: (json['transactionId'] as num).toInt(),
      amount: (json['amount'] as num).toInt(),
      fee: (json['fee'] as num).toInt(),
      netAmount: (json['netAmount'] as num).toInt(),
      statusCode: json['statusCode'] as String,
      statusName: json['statusName'] as String,
      scheduledAt: json['scheduledAt'] as String,
      processedAt: json['processedAt'] as String?,
      failureReason: json['failureReason'] as String?,
      eventTitle: json['eventTitle'] as String?,
      seatInfo: json['seatInfo'] as String?,
    );

Map<String, dynamic> _$SettlementRespDtoToJson(_SettlementRespDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transactionId': instance.transactionId,
      'amount': instance.amount,
      'fee': instance.fee,
      'netAmount': instance.netAmount,
      'statusCode': instance.statusCode,
      'statusName': instance.statusName,
      'scheduledAt': instance.scheduledAt,
      'processedAt': instance.processedAt,
      'failureReason': instance.failureReason,
      'eventTitle': instance.eventTitle,
      'seatInfo': instance.seatInfo,
    };
