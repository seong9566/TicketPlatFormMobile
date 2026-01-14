// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sell_ticket_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SellTicketRegisterRespDto _$SellTicketRegisterRespDtoFromJson(
  Map<String, dynamic> json,
) => _SellTicketRegisterRespDto(
  ticketId: (json['ticketId'] as num).toInt(),
  status: json['status'] as String,
  message: json['message'] as String,
);

Map<String, dynamic> _$SellTicketRegisterRespDtoToJson(
  _SellTicketRegisterRespDto instance,
) => <String, dynamic>{
  'ticketId': instance.ticketId,
  'status': instance.status,
  'message': instance.message,
};

_SellMyTicketRespDto _$SellMyTicketRespDtoFromJson(Map<String, dynamic> json) =>
    _SellMyTicketRespDto(
      ticketId: (json['ticketId'] as num).toInt(),
      title: json['title'] as String,
      eventDatetime: json['eventDatetime'] as String,
      seatInfo: json['seatInfo'] as String,
      quantity: (json['quantity'] as num).toInt(),
      remainingQuantity: (json['remainingQuantity'] as num).toInt(),
      price: (json['price'] as num).toInt(),
      originalPrice: (json['originalPrice'] as num).toInt(),
      status: json['status'] as String,
      createdAt: json['createdAt'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String?,
    );

Map<String, dynamic> _$SellMyTicketRespDtoToJson(
  _SellMyTicketRespDto instance,
) => <String, dynamic>{
  'ticketId': instance.ticketId,
  'title': instance.title,
  'eventDatetime': instance.eventDatetime,
  'seatInfo': instance.seatInfo,
  'quantity': instance.quantity,
  'remainingQuantity': instance.remainingQuantity,
  'price': instance.price,
  'originalPrice': instance.originalPrice,
  'status': instance.status,
  'createdAt': instance.createdAt,
  'thumbnailUrl': instance.thumbnailUrl,
};

_SellMyTicketsPageRespDto _$SellMyTicketsPageRespDtoFromJson(
  Map<String, dynamic> json,
) => _SellMyTicketsPageRespDto(
  tickets: (json['tickets'] as List<dynamic>)
      .map((e) => SellMyTicketRespDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalCount: (json['totalCount'] as num).toInt(),
  currentPage: (json['currentPage'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
);

Map<String, dynamic> _$SellMyTicketsPageRespDtoToJson(
  _SellMyTicketsPageRespDto instance,
) => <String, dynamic>{
  'tickets': instance.tickets,
  'totalCount': instance.totalCount,
  'currentPage': instance.currentPage,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
};

_SellTicketCancelRespDto _$SellTicketCancelRespDtoFromJson(
  Map<String, dynamic> json,
) => _SellTicketCancelRespDto(
  ticketId: (json['ticketId'] as num).toInt(),
  status: json['status'] as String,
  message: json['message'] as String,
);

Map<String, dynamic> _$SellTicketCancelRespDtoToJson(
  _SellTicketCancelRespDto instance,
) => <String, dynamic>{
  'ticketId': instance.ticketId,
  'status': instance.status,
  'message': instance.message,
};
