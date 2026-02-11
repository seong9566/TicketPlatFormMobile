// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_item_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationItemRespDto _$NotificationItemRespDtoFromJson(
  Map<String, dynamic> json,
) => _NotificationItemRespDto(
  id: (json['id'] as num?)?.toInt() ?? 0,
  typeCode: json['typeCode'] as String? ?? '',
  typeName: json['typeName'] as String? ?? '',
  title: json['title'] as String? ?? '',
  body: json['body'] as String? ?? '',
  data: json['data'] as String?,
  readFlag: json['readFlag'] as bool? ?? false,
  readAt: json['readAt'] == null
      ? null
      : DateTime.parse(json['readAt'] as String),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$NotificationItemRespDtoToJson(
  _NotificationItemRespDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'typeCode': instance.typeCode,
  'typeName': instance.typeName,
  'title': instance.title,
  'body': instance.body,
  'data': instance.data,
  'readFlag': instance.readFlag,
  'readAt': instance.readAt?.toIso8601String(),
  'createdAt': instance.createdAt?.toIso8601String(),
};
