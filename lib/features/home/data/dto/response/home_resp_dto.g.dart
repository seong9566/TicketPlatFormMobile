// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeRespDto _$HomeRespDtoFromJson(Map<String, dynamic> json) => _HomeRespDto(
  popularTickets: (json['popularTickets'] as List<dynamic>)
      .map((e) => PopularTicketDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  recommendedEvents: (json['recommendedEvents'] as List<dynamic>)
      .map((e) => RecommendedEventDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$HomeRespDtoToJson(_HomeRespDto instance) =>
    <String, dynamic>{
      'popularTickets': instance.popularTickets,
      'recommendedEvents': instance.recommendedEvents,
    };

_PopularTicketDto _$PopularTicketDtoFromJson(Map<String, dynamic> json) =>
    _PopularTicketDto(
      ticketId: (json['ticketId'] as num).toInt(),
      ticketTitle: json['ticketTitle'] as String,
      price: (json['price'] as num).toInt(),
      posterImageUrl: json['posterImageUrl'] as String?,
      eventTitle: json['eventTitle'] as String?,
      eventDate: json['eventDate'] as String?,
    );

Map<String, dynamic> _$PopularTicketDtoToJson(_PopularTicketDto instance) =>
    <String, dynamic>{
      'ticketId': instance.ticketId,
      'ticketTitle': instance.ticketTitle,
      'price': instance.price,
      'posterImageUrl': instance.posterImageUrl,
      'eventTitle': instance.eventTitle,
      'eventDate': instance.eventDate,
    };

_RecommendedEventDto _$RecommendedEventDtoFromJson(Map<String, dynamic> json) =>
    _RecommendedEventDto(
      eventId: (json['eventId'] as num).toInt(),
      eventTitle: json['eventTitle'] as String,
      posterImageUrl: json['posterImageUrl'] as String,
      eventDate: json['eventDate'] as String,
      ticketCount: (json['ticketCount'] as num).toInt(),
    );

Map<String, dynamic> _$RecommendedEventDtoToJson(
  _RecommendedEventDto instance,
) => <String, dynamic>{
  'eventId': instance.eventId,
  'eventTitle': instance.eventTitle,
  'posterImageUrl': instance.posterImageUrl,
  'eventDate': instance.eventDate,
  'ticketCount': instance.ticketCount,
};
