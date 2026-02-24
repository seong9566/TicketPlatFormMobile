// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_ticket_list_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EventTicketListRespDto _$EventTicketListRespDtoFromJson(
  Map<String, dynamic> json,
) => _EventTicketListRespDto(
  eventId: (json['eventId'] as num).toInt(),
  eventTitle: json['eventTitle'] as String,
  tickets: (json['tickets'] as List<dynamic>)
      .map((e) => EventTicketItemDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  page: (json['page'] as num).toInt(),
  size: (json['size'] as num).toInt(),
  totalCount: (json['totalCount'] as num).toInt(),
  hasMore: json['hasMore'] as bool,
);

Map<String, dynamic> _$EventTicketListRespDtoToJson(
  _EventTicketListRespDto instance,
) => <String, dynamic>{
  'eventId': instance.eventId,
  'eventTitle': instance.eventTitle,
  'tickets': instance.tickets,
  'page': instance.page,
  'size': instance.size,
  'totalCount': instance.totalCount,
  'hasMore': instance.hasMore,
};

_EventTicketItemDto _$EventTicketItemDtoFromJson(Map<String, dynamic> json) =>
    _EventTicketItemDto(
      ticketId: (json['ticketId'] as num).toInt(),
      seatInfo: json['seatInfo'] as String?,
      quantity: (json['quantity'] as num).toInt(),
      remainingQuantity: (json['remainingQuantity'] as num).toInt(),
      price: (json['price'] as num).toInt(),
      originalPrice: (json['originalPrice'] as num).toInt(),
      statusCode: json['statusCode'] as String,
      statusName: json['statusName'] as String,
      transactionId: (json['transactionId'] as num?)?.toInt(),
      thumbnailUrl: json['thumbnailUrl'] as String?,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$EventTicketItemDtoToJson(_EventTicketItemDto instance) =>
    <String, dynamic>{
      'ticketId': instance.ticketId,
      'seatInfo': instance.seatInfo,
      'quantity': instance.quantity,
      'remainingQuantity': instance.remainingQuantity,
      'price': instance.price,
      'originalPrice': instance.originalPrice,
      'statusCode': instance.statusCode,
      'statusName': instance.statusName,
      'transactionId': instance.transactionId,
      'thumbnailUrl': instance.thumbnailUrl,
      'createdAt': instance.createdAt,
    };
