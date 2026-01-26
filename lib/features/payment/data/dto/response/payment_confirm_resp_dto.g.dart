// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_confirm_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentConfirmRespDto _$PaymentConfirmRespDtoFromJson(
  Map<String, dynamic> json,
) => _PaymentConfirmRespDto(
  paymentKey: json['paymentKey'] as String,
  orderId: json['orderId'] as String,
  orderName: json['orderName'] as String,
  status: json['status'] as String,
  requestedAt: json['requestedAt'] as String,
  approvedAt: json['approvedAt'] as String?,
  method: json['method'] as String,
  totalAmount: (json['totalAmount'] as num).toInt(),
  balanceAmount: (json['balanceAmount'] as num).toInt(),
);

Map<String, dynamic> _$PaymentConfirmRespDtoToJson(
  _PaymentConfirmRespDto instance,
) => <String, dynamic>{
  'paymentKey': instance.paymentKey,
  'orderId': instance.orderId,
  'orderName': instance.orderName,
  'status': instance.status,
  'requestedAt': instance.requestedAt,
  'approvedAt': instance.approvedAt,
  'method': instance.method,
  'totalAmount': instance.totalAmount,
  'balanceAmount': instance.balanceAmount,
};
