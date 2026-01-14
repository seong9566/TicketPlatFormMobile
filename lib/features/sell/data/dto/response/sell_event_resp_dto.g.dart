// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sell_event_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SellEventRespDto _$SellEventRespDtoFromJson(Map<String, dynamic> json) =>
    _SellEventRespDto(
      eventId: (json['eventId'] as num).toInt(),
      title: json['title'] as String,
      posterImageUrl: json['posterImageUrl'] as String?,
      venueName: json['venueName'] as String,
      startAt: json['startAt'] as String,
      endAt: json['endAt'] as String,
    );

Map<String, dynamic> _$SellEventRespDtoToJson(_SellEventRespDto instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'title': instance.title,
      'posterImageUrl': instance.posterImageUrl,
      'venueName': instance.venueName,
      'startAt': instance.startAt,
      'endAt': instance.endAt,
    };

_SellEventsPageRespDto _$SellEventsPageRespDtoFromJson(
  Map<String, dynamic> json,
) => _SellEventsPageRespDto(
  events: (json['events'] as List<dynamic>)
      .map((e) => SellEventRespDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalCount: (json['totalCount'] as num?)?.toInt() ?? 0,
  currentPage: (json['currentPage'] as num?)?.toInt() ?? 1,
  pageSize: (json['pageSize'] as num?)?.toInt() ?? 20,
  totalPages: (json['totalPages'] as num?)?.toInt() ?? 1,
);

Map<String, dynamic> _$SellEventsPageRespDtoToJson(
  _SellEventsPageRespDto instance,
) => <String, dynamic>{
  'events': instance.events,
  'totalCount': instance.totalCount,
  'currentPage': instance.currentPage,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
};
