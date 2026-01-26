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
  clientKey: json['clientKey'] as String,
  successUrl: json['successUrl'] as String,
  failUrl: json['failUrl'] as String,
);

Map<String, dynamic> _$PaymentRequestRespDtoToJson(
  _PaymentRequestRespDto instance,
) => <String, dynamic>{
  'orderId': instance.orderId,
  'amount': instance.amount,
  'orderName': instance.orderName,
  'customerName': instance.customerName,
  'customerEmail': instance.customerEmail,
  'clientKey': instance.clientKey,
  'successUrl': instance.successUrl,
  'failUrl': instance.failUrl,
};
