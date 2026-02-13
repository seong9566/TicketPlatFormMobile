// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispute_list_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DisputeListRespDto _$DisputeListRespDtoFromJson(Map<String, dynamic> json) =>
    _DisputeListRespDto(
      items:
          (json['items'] as List<dynamic>?)
              ?.map(
                (e) =>
                    DisputeListItemRespDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      nextCursor: json['nextCursor'] as String?,
      hasMore: json['hasMore'] as bool? ?? false,
    );

Map<String, dynamic> _$DisputeListRespDtoToJson(_DisputeListRespDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'nextCursor': instance.nextCursor,
      'hasMore': instance.hasMore,
    };

_DisputeListItemRespDto _$DisputeListItemRespDtoFromJson(
  Map<String, dynamic> json,
) => _DisputeListItemRespDto(
  id: (json['id'] as num).toInt(),
  transactionId: (json['transactionId'] as num).toInt(),
  typeCode: json['typeCode'] as String,
  typeName: json['typeName'] as String,
  statusCode: json['statusCode'] as String,
  statusName: json['statusName'] as String,
  description: json['description'] as String,
  evidenceCount: (json['evidenceCount'] as num?)?.toInt() ?? 0,
  createdAt: json['createdAt'] as String,
);

Map<String, dynamic> _$DisputeListItemRespDtoToJson(
  _DisputeListItemRespDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'transactionId': instance.transactionId,
  'typeCode': instance.typeCode,
  'typeName': instance.typeName,
  'statusCode': instance.statusCode,
  'statusName': instance.statusName,
  'description': instance.description,
  'evidenceCount': instance.evidenceCount,
  'createdAt': instance.createdAt,
};
