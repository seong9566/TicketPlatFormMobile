// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispute_create_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DisputeCreateRespDto _$DisputeCreateRespDtoFromJson(
  Map<String, dynamic> json,
) => _DisputeCreateRespDto(
  id: (json['id'] as num).toInt(),
  transactionId: (json['transactionId'] as num).toInt(),
  typeCode: json['typeCode'] as String,
  typeName: json['typeName'] as String,
  statusCode: json['statusCode'] as String,
  statusName: json['statusName'] as String,
  description: json['description'] as String,
  createdAt: json['createdAt'] as String,
);

Map<String, dynamic> _$DisputeCreateRespDtoToJson(
  _DisputeCreateRespDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'transactionId': instance.transactionId,
  'typeCode': instance.typeCode,
  'typeName': instance.typeName,
  'statusCode': instance.statusCode,
  'statusName': instance.statusName,
  'description': instance.description,
  'createdAt': instance.createdAt,
};
