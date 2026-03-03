// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settlement_detail_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SettlementDetailRespDto _$SettlementDetailRespDtoFromJson(
  Map<String, dynamic> json,
) => _SettlementDetailRespDto(
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
  retryCount: (json['retryCount'] as num?)?.toInt(),
  eventTitle: json['eventTitle'] as String?,
  seatInfo: json['seatInfo'] as String?,
  buyerNickname: json['buyerNickname'] as String?,
  bankName: json['bankName'] as String?,
  accountNumber: json['accountNumber'] as String?,
  accountHolder: json['accountHolder'] as String?,
);

Map<String, dynamic> _$SettlementDetailRespDtoToJson(
  _SettlementDetailRespDto instance,
) => <String, dynamic>{
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
  'retryCount': instance.retryCount,
  'eventTitle': instance.eventTitle,
  'seatInfo': instance.seatInfo,
  'buyerNickname': instance.buyerNickname,
  'bankName': instance.bankName,
  'accountNumber': instance.accountNumber,
  'accountHolder': instance.accountHolder,
};
