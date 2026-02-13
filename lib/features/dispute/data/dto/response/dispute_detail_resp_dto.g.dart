// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispute_detail_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DisputeDetailRespDto _$DisputeDetailRespDtoFromJson(
  Map<String, dynamic> json,
) => _DisputeDetailRespDto(
  id: (json['id'] as num).toInt(),
  transactionId: (json['transactionId'] as num).toInt(),
  typeCode: json['typeCode'] as String,
  typeName: json['typeName'] as String,
  statusCode: json['statusCode'] as String,
  statusName: json['statusName'] as String,
  description: json['description'] as String,
  evidences:
      (json['evidences'] as List<dynamic>?)
          ?.map(
            (e) => DisputeEvidenceRespDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  transaction: json['transaction'] == null
      ? null
      : DisputeTransactionSummaryRespDto.fromJson(
          json['transaction'] as Map<String, dynamic>,
        ),
  createdAt: json['createdAt'] as String,
);

Map<String, dynamic> _$DisputeDetailRespDtoToJson(
  _DisputeDetailRespDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'transactionId': instance.transactionId,
  'typeCode': instance.typeCode,
  'typeName': instance.typeName,
  'statusCode': instance.statusCode,
  'statusName': instance.statusName,
  'description': instance.description,
  'evidences': instance.evidences,
  'transaction': instance.transaction,
  'createdAt': instance.createdAt,
};

_DisputeTransactionSummaryRespDto _$DisputeTransactionSummaryRespDtoFromJson(
  Map<String, dynamic> json,
) => _DisputeTransactionSummaryRespDto(
  transactionId: (json['transactionId'] as num).toInt(),
  ticketTitle: json['ticketTitle'] as String,
  amount: (json['amount'] as num).toInt(),
  buyerNickname: json['buyerNickname'] as String?,
  sellerNickname: json['sellerNickname'] as String?,
);

Map<String, dynamic> _$DisputeTransactionSummaryRespDtoToJson(
  _DisputeTransactionSummaryRespDto instance,
) => <String, dynamic>{
  'transactionId': instance.transactionId,
  'ticketTitle': instance.ticketTitle,
  'amount': instance.amount,
  'buyerNickname': instance.buyerNickname,
  'sellerNickname': instance.sellerNickname,
};
