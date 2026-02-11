// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_list_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationListRespDto _$NotificationListRespDtoFromJson(
  Map<String, dynamic> json,
) => _NotificationListRespDto(
  items:
      (json['items'] as List<dynamic>?)
          ?.map(
            (e) => NotificationItemRespDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  nextCursor: json['nextCursor'] as String?,
  hasMore: json['hasMore'] as bool? ?? false,
);

Map<String, dynamic> _$NotificationListRespDtoToJson(
  _NotificationListRespDto instance,
) => <String, dynamic>{
  'items': instance.items,
  'nextCursor': instance.nextCursor,
  'hasMore': instance.hasMore,
};
