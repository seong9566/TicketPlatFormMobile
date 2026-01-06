// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeRespDto _$HomeRespDtoFromJson(Map<String, dynamic> json) => _HomeRespDto(
  popularEvents: (json['popularEvents'] as List<dynamic>)
      .map((e) => PopularEventDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  recommendedEvents: (json['recommendedEvents'] as List<dynamic>)
      .map((e) => RecommendedEventDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$HomeRespDtoToJson(_HomeRespDto instance) =>
    <String, dynamic>{
      'popularEvents': instance.popularEvents,
      'recommendedEvents': instance.recommendedEvents,
    };

_PopularEventDto _$PopularEventDtoFromJson(Map<String, dynamic> json) =>
    _PopularEventDto(
      eventId: (json['eventId'] as num).toInt(),
      eventTitle: json['eventTitle'] as String,
      eventDescription: json['eventDescription'] as String?,
      eventDate: json['eventDate'] as String,
      venue: json['venue'] as String,
      minTicketPrice: (json['minTicketPrice'] as num).toInt(),
      originalMinTicketPrice: (json['originalMinTicketPrice'] as num).toInt(),
      ticketDiscountRate: (json['ticketDiscountRate'] as num).toInt(),
      posterImageUrl: json['posterImageUrl'] as String?,
      availableTicketCount: (json['availableTicketCount'] as num).toInt(),
      categoryId: (json['categoryId'] as num).toInt(),
    );

Map<String, dynamic> _$PopularEventDtoToJson(_PopularEventDto instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'eventTitle': instance.eventTitle,
      'eventDescription': instance.eventDescription,
      'eventDate': instance.eventDate,
      'venue': instance.venue,
      'minTicketPrice': instance.minTicketPrice,
      'originalMinTicketPrice': instance.originalMinTicketPrice,
      'ticketDiscountRate': instance.ticketDiscountRate,
      'posterImageUrl': instance.posterImageUrl,
      'availableTicketCount': instance.availableTicketCount,
      'categoryId': instance.categoryId,
    };

_RecommendedEventDto _$RecommendedEventDtoFromJson(Map<String, dynamic> json) =>
    _RecommendedEventDto(
      eventId: (json['eventId'] as num).toInt(),
      eventTitle: json['eventTitle'] as String,
      eventDate: json['eventDate'] as String,
      eventDescription: json['eventDescription'] as String?,
      venue: json['venue'] as String,
      minTicketPrice: (json['minTicketPrice'] as num).toInt(),
      originalMinTicketPrice: (json['originalMinTicketPrice'] as num).toInt(),
      ticketDiscountRate: (json['ticketDiscountRate'] as num).toInt(),
      posterImageUrl: json['posterImageUrl'] as String?,
      availableTicketCount: (json['availableTicketCount'] as num).toInt(),
      categoryId: (json['categoryId'] as num).toInt(),
      isWishedByMe: json['isWishedByMe'] as bool,
    );

Map<String, dynamic> _$RecommendedEventDtoToJson(
  _RecommendedEventDto instance,
) => <String, dynamic>{
  'eventId': instance.eventId,
  'eventTitle': instance.eventTitle,
  'eventDate': instance.eventDate,
  'eventDescription': instance.eventDescription,
  'venue': instance.venue,
  'minTicketPrice': instance.minTicketPrice,
  'originalMinTicketPrice': instance.originalMinTicketPrice,
  'ticketDiscountRate': instance.ticketDiscountRate,
  'posterImageUrl': instance.posterImageUrl,
  'availableTicketCount': instance.availableTicketCount,
  'categoryId': instance.categoryId,
  'isWishedByMe': instance.isWishedByMe,
};
