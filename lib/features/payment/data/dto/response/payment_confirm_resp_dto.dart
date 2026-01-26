import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/payment/domain/entities/payment_entities.dart';

part 'payment_confirm_resp_dto.freezed.dart';
part 'payment_confirm_resp_dto.g.dart';

@freezed
abstract class PaymentConfirmRespDto with _$PaymentConfirmRespDto {
  const factory PaymentConfirmRespDto({
    required String paymentKey,
    required String orderId,
    required String orderName,
    required String status,
    required String requestedAt,
    String? approvedAt,
    required String method,
    required int totalAmount,
    required int balanceAmount,
  }) = _PaymentConfirmRespDto;

  factory PaymentConfirmRespDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentConfirmRespDtoFromJson(json);
}

extension PaymentConfirmRespDtoX on PaymentConfirmRespDto {
  PaymentConfirmEntity toEntity() {
    return PaymentConfirmEntity(
      paymentKey: paymentKey,
      orderId: orderId,
      orderName: orderName,
      status: status,
      requestedAt: DateTime.parse(requestedAt),
      approvedAt: approvedAt != null ? DateTime.parse(approvedAt!) : null,
      method: method,
      totalAmount: totalAmount,
      balanceAmount: balanceAmount,
    );
  }
}
