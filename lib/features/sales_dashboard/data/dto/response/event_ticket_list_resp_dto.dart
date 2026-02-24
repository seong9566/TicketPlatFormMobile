import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/domain/entities/event_ticket_entity.dart';

part 'event_ticket_list_resp_dto.freezed.dart';
part 'event_ticket_list_resp_dto.g.dart';

@freezed
abstract class EventTicketListRespDto with _$EventTicketListRespDto {
  const factory EventTicketListRespDto({
    required int eventId,
    required String eventTitle,
    required List<EventTicketItemDto> tickets,
    required int page,
    required int size,
    required int totalCount,
    required bool hasMore,
  }) = _EventTicketListRespDto;

  factory EventTicketListRespDto.fromJson(Map<String, dynamic> json) =>
      _$EventTicketListRespDtoFromJson(json);
}

@freezed
abstract class EventTicketItemDto with _$EventTicketItemDto {
  const factory EventTicketItemDto({
    required int ticketId,
    String? seatInfo,
    required int quantity,
    required int remainingQuantity,
    required int price,
    required int originalPrice,
    required String statusCode,
    required String statusName,
    int? transactionId,
    String? thumbnailUrl,
    required String createdAt,
  }) = _EventTicketItemDto;

  factory EventTicketItemDto.fromJson(Map<String, dynamic> json) =>
      _$EventTicketItemDtoFromJson(json);
}

extension EventTicketListRespDtoX on EventTicketListRespDto {
  EventTicketListEntity toEntity() {
    return EventTicketListEntity(
      eventId: eventId,
      eventTitle: eventTitle,
      tickets: tickets.map((e) => e.toEntity()).toList(),
      page: page,
      size: size,
      totalCount: totalCount,
      hasMore: hasMore,
    );
  }
}

extension EventTicketItemDtoX on EventTicketItemDto {
  EventTicketEntity toEntity() {
    return EventTicketEntity(
      ticketId: ticketId,
      seatInfo: seatInfo,
      quantity: quantity,
      remainingQuantity: remainingQuantity,
      price: price,
      originalPrice: originalPrice,
      statusCode: statusCode,
      statusName: statusName,
      transactionId: transactionId,
      thumbnailUrl: thumbnailUrl,
      createdAt: DateTime.parse(createdAt),
    );
  }
}
