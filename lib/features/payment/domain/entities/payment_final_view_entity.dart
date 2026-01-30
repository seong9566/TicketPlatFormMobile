import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_final_view_entity.freezed.dart';
part 'payment_final_view_entity.g.dart';

@freezed
abstract class PaymentFinalViewEntity with _$PaymentFinalViewEntity {
  const factory PaymentFinalViewEntity({
    required String paymentKey,
    required String orderId,
    required int amount,
    required String orderName,
  }) = _PaymentFinalViewEntity;

  factory PaymentFinalViewEntity.fromJson(Map<String, dynamic> json) =>
      _$PaymentFinalViewEntityFromJson(json);
}
