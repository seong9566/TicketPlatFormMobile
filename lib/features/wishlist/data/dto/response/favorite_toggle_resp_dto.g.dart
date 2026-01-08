// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_toggle_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavoriteToggleRespDto _$FavoriteToggleRespDtoFromJson(
  Map<String, dynamic> json,
) => _FavoriteToggleRespDto(
  ticketId: (json['ticketId'] as num).toInt(),
  isFavorited: json['isFavorited'] as bool,
);

Map<String, dynamic> _$FavoriteToggleRespDtoToJson(
  _FavoriteToggleRespDto instance,
) => <String, dynamic>{
  'ticketId': instance.ticketId,
  'isFavorited': instance.isFavorited,
};
