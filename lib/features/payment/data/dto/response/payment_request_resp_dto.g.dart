// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_request_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentRequestRespDto _$PaymentRequestRespDtoFromJson(
  Map<String, dynamic> json,
) => _PaymentRequestRespDto(
  orderId: json['orderId'] as String,
  amount: (json['amount'] as num).toInt(),
  orderName: json['orderName'] as String,
  customerName: json['customerName'] as String?,
  customerEmail: json['customerEmail'] as String?,
  successUrl: json['successUrl'] as String,
  failUrl: json['failUrl'] as String,
  clientKey: json['clientKey'] as String,
  ticketInfo: json['ticketInfo'] == null
      ? null
      : PaymentTicketInfoRespDto.fromJson(
          json['ticketInfo'] as Map<String, dynamic>,
        ),
  eventInfo: json['eventInfo'] == null
      ? null
      : PaymentEventInfoRespDto.fromJson(
          json['eventInfo'] as Map<String, dynamic>,
        ),
  eventTitle: json['eventTitle'] as String?,
  eventDate: json['eventDate'] as String?,
  seatInfo: json['seatInfo'] as String?,
  ticketImageUrl: json['ticketImageUrl'] as String?,
  venueName: json['venueName'] as String?,
);

Map<String, dynamic> _$PaymentRequestRespDtoToJson(
  _PaymentRequestRespDto instance,
) => <String, dynamic>{
  'orderId': instance.orderId,
  'amount': instance.amount,
  'orderName': instance.orderName,
  'customerName': instance.customerName,
  'customerEmail': instance.customerEmail,
  'successUrl': instance.successUrl,
  'failUrl': instance.failUrl,
  'clientKey': instance.clientKey,
  'ticketInfo': instance.ticketInfo,
  'eventInfo': instance.eventInfo,
  'eventTitle': instance.eventTitle,
  'eventDate': instance.eventDate,
  'seatInfo': instance.seatInfo,
  'ticketImageUrl': instance.ticketImageUrl,
  'venueName': instance.venueName,
};

_PaymentTicketInfoRespDto _$PaymentTicketInfoRespDtoFromJson(
  Map<String, dynamic> json,
) => _PaymentTicketInfoRespDto(
  ticketId: (json['ticketId'] as num?)?.toInt(),
  thumbnailUrl: json['thumbnailUrl'] as String?,
  seatInfo: json['seatInfo'] as String?,
  quantity: (json['quantity'] as num?)?.toInt(),
  unitPrice: (json['unitPrice'] as num?)?.toInt(),
  totalAmount: (json['totalAmount'] as num?)?.toInt(),
);

Map<String, dynamic> _$PaymentTicketInfoRespDtoToJson(
  _PaymentTicketInfoRespDto instance,
) => <String, dynamic>{
  'ticketId': instance.ticketId,
  'thumbnailUrl': instance.thumbnailUrl,
  'seatInfo': instance.seatInfo,
  'quantity': instance.quantity,
  'unitPrice': instance.unitPrice,
  'totalAmount': instance.totalAmount,
};

_PaymentEventInfoRespDto _$PaymentEventInfoRespDtoFromJson(
  Map<String, dynamic> json,
) => _PaymentEventInfoRespDto(
  eventId: (json['eventId'] as num?)?.toInt(),
  title: json['title'] as String?,
  eventDateTime: json['eventDateTime'] as String?,
  venueName: json['venueName'] as String?,
);

Map<String, dynamic> _$PaymentEventInfoRespDtoToJson(
  _PaymentEventInfoRespDto instance,
) => <String, dynamic>{
  'eventId': instance.eventId,
  'title': instance.title,
  'eventDateTime': instance.eventDateTime,
  'venueName': instance.venueName,
};
