import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/payment/domain/entities/payment_entities.dart';

part 'payment_request_resp_dto.freezed.dart';
part 'payment_request_resp_dto.g.dart';

@freezed
abstract class PaymentRequestRespDto with _$PaymentRequestRespDto {
  const factory PaymentRequestRespDto({
    required String orderId,
    required int amount,
    required String orderName,
    String? customerName,
    String? customerEmail,
    required String successUrl,
    required String failUrl,
    required String clientKey,
  }) = _PaymentRequestRespDto;

  factory PaymentRequestRespDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentRequestRespDtoFromJson(json);
}

extension PaymentRequestRespDtoX on PaymentRequestRespDto {
  PaymentRequestEntity toEntity({
    String? eventTitle,
    String? eventDate,
    String? seatInfo,
    String? ticketImageUrl,
    String? venueName,
  }) {
    return PaymentRequestEntity(
      orderId: orderId,
      amount: amount,
      orderName: orderName,
      customerName: customerName,
      customerEmail: customerEmail,
      successUrl: successUrl,
      failUrl: failUrl,
      clientKey: clientKey,
      eventTitle: eventTitle,
      eventDate: eventDate,
      seatInfo: seatInfo,
      ticketImageUrl: ticketImageUrl,
      venueName: venueName,
    );
  }
}
