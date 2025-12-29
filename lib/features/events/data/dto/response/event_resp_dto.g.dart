// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EventRespDto _$EventRespDtoFromJson(Map<String, dynamic> json) =>
    _EventRespDto(
      eventId: (json['eventId'] as num).toInt(),
      eventTitle: json['eventTitle'] as String,
      eventPosterImageUrl: json['eventPosterImageUrl'] as String,
      startAt: json['startAt'] as String,
      endAt: json['endAt'] as String,
      venueName: json['venueName'] as String,
      artistId: (json['artistId'] as num?)?.toInt(),
      artistName: json['artistName'] as String?,
      artistProfileImageUrl: json['artistProfileImageUrl'] as String?,
      eventCreatedAt: json['eventCreatedAt'] as String,
      isNew: json['isNew'] as bool,
    );

Map<String, dynamic> _$EventRespDtoToJson(_EventRespDto instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'eventTitle': instance.eventTitle,
      'eventPosterImageUrl': instance.eventPosterImageUrl,
      'startAt': instance.startAt,
      'endAt': instance.endAt,
      'venueName': instance.venueName,
      'artistId': instance.artistId,
      'artistName': instance.artistName,
      'artistProfileImageUrl': instance.artistProfileImageUrl,
      'eventCreatedAt': instance.eventCreatedAt,
      'isNew': instance.isNew,
    };

_EventListRespDto _$EventListRespDtoFromJson(Map<String, dynamic> json) =>
    _EventListRespDto(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => EventRespDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$EventListRespDtoToJson(_EventListRespDto instance) =>
    <String, dynamic>{'data': instance.data};
