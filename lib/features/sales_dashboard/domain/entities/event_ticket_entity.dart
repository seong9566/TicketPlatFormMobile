import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_ticket_entity.freezed.dart';

@freezed
abstract class EventTicketEntity with _$EventTicketEntity {
  const factory EventTicketEntity({
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
    required DateTime createdAt,
  }) = _EventTicketEntity;
}

@freezed
abstract class EventTicketListEntity with _$EventTicketListEntity {
  const factory EventTicketListEntity({
    required int eventId,
    required String eventTitle,
    required List<EventTicketEntity> tickets,
    required int page,
    required int size,
    required int totalCount,
    required bool hasMore,
  }) = _EventTicketListEntity;
}
