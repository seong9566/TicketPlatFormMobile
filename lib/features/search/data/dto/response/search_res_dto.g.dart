// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_res_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EventSearchItemDto _$EventSearchItemDtoFromJson(Map<String, dynamic> json) =>
    _EventSearchItemDto(
      eventId: (json['eventId'] as num).toInt(),
      title: json['title'] as String,
      eventDate: json['eventDate'] as String?,
      location: json['location'] as String?,
      imageUrl: json['imageUrl'] as String?,
      minPrice: (json['minPrice'] as num?)?.toInt(),
    );

Map<String, dynamic> _$EventSearchItemDtoToJson(_EventSearchItemDto instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'title': instance.title,
      'eventDate': instance.eventDate,
      'location': instance.location,
      'imageUrl': instance.imageUrl,
      'minPrice': instance.minPrice,
    };

_TicketSearchItemDto _$TicketSearchItemDtoFromJson(Map<String, dynamic> json) =>
    _TicketSearchItemDto(
      ticketId: (json['ticketId'] as num).toInt(),
      eventId: (json['eventId'] as num).toInt(),
      eventTitle: json['eventTitle'] as String?,
      price: (json['price'] as num?)?.toInt(),
      seatInfo: json['seatInfo'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$TicketSearchItemDtoToJson(
  _TicketSearchItemDto instance,
) => <String, dynamic>{
  'ticketId': instance.ticketId,
  'eventId': instance.eventId,
  'eventTitle': instance.eventTitle,
  'price': instance.price,
  'seatInfo': instance.seatInfo,
  'status': instance.status,
};

_SearchResDto _$SearchResDtoFromJson(
  Map<String, dynamic> json,
) => _SearchResDto(
  events:
      (json['events'] as List<dynamic>?)
          ?.map((e) => EventSearchItemDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  tickets:
      (json['tickets'] as List<dynamic>?)
          ?.map((e) => TicketSearchItemDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  totalCount: (json['totalCount'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$SearchResDtoToJson(_SearchResDto instance) =>
    <String, dynamic>{
      'events': instance.events,
      'tickets': instance.tickets,
      'totalCount': instance.totalCount,
    };
