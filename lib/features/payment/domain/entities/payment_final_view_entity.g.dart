// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_final_view_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentFinalViewEntity _$PaymentFinalViewEntityFromJson(
  Map<String, dynamic> json,
) => _PaymentFinalViewEntity(
  paymentKey: json['paymentKey'] as String,
  orderId: json['orderId'] as String,
  amount: (json['amount'] as num).toInt(),
  orderName: json['orderName'] as String,
);

Map<String, dynamic> _$PaymentFinalViewEntityToJson(
  _PaymentFinalViewEntity instance,
) => <String, dynamic>{
  'paymentKey': instance.paymentKey,
  'orderId': instance.orderId,
  'amount': instance.amount,
  'orderName': instance.orderName,
};
