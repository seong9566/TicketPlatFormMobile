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
    PaymentTicketInfoRespDto? ticketInfo,
    PaymentEventInfoRespDto? eventInfo,
    String? eventTitle,
    String? eventDate,
    String? seatInfo,
    String? ticketImageUrl,
    String? venueName,
  }) = _PaymentRequestRespDto;

  factory PaymentRequestRespDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentRequestRespDtoFromJson(json);
}

@freezed
abstract class PaymentTicketInfoRespDto with _$PaymentTicketInfoRespDto {
  const factory PaymentTicketInfoRespDto({
    int? ticketId,
    String? thumbnailUrl,
    String? seatInfo,
    int? quantity,
    int? unitPrice,
    int? totalAmount,
  }) = _PaymentTicketInfoRespDto;

  factory PaymentTicketInfoRespDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentTicketInfoRespDtoFromJson(json);
}

@freezed
abstract class PaymentEventInfoRespDto with _$PaymentEventInfoRespDto {
  const factory PaymentEventInfoRespDto({
    int? eventId,
    String? title,
    String? eventDateTime,
    String? venueName,
  }) = _PaymentEventInfoRespDto;

  factory PaymentEventInfoRespDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentEventInfoRespDtoFromJson(json);
}

extension PaymentRequestRespDtoX on PaymentRequestRespDto {
  PaymentRequestEntity toEntity() {
    final resolvedTicketInfo =
        ticketInfo ??
        ((seatInfo != null || ticketImageUrl != null)
            ? PaymentTicketInfoRespDto(
                seatInfo: seatInfo,
                thumbnailUrl: ticketImageUrl,
                totalAmount: amount,
              )
            : null);

    final resolvedEventInfo =
        eventInfo ??
        ((eventTitle != null || eventDate != null || venueName != null)
            ? PaymentEventInfoRespDto(
                title: eventTitle,
                eventDateTime: eventDate,
                venueName: venueName,
              )
            : null);

    return PaymentRequestEntity(
      orderId: orderId,
      amount: amount,
      orderName: orderName,
      customerName: customerName,
      customerEmail: customerEmail,
      successUrl: successUrl,
      failUrl: failUrl,
      clientKey: clientKey,
      ticketInfo: resolvedTicketInfo?.toEntity(),
      eventInfo: resolvedEventInfo?.toEntity(),
    );
  }
}

extension PaymentTicketInfoRespDtoX on PaymentTicketInfoRespDto {
  PaymentTicketInfoEntity toEntity() {
    return PaymentTicketInfoEntity(
      ticketId: ticketId,
      thumbnailUrl: thumbnailUrl,
      seatInfo: seatInfo,
      quantity: quantity,
      unitPrice: unitPrice,
      totalAmount: totalAmount,
    );
  }
}

extension PaymentEventInfoRespDtoX on PaymentEventInfoRespDto {
  PaymentEventInfoEntity toEntity() {
    return PaymentEventInfoEntity(
      eventId: eventId,
      title: title,
      eventDateTime: eventDateTime,
      venueName: venueName,
    );
  }
}
