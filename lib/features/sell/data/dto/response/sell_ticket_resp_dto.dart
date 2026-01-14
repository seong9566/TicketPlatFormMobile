import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_ticket_entity.dart';

part 'sell_ticket_resp_dto.freezed.dart';
part 'sell_ticket_resp_dto.g.dart';

/// 티켓 등록 응답
@freezed
abstract class SellTicketRegisterRespDto with _$SellTicketRegisterRespDto {
  const factory SellTicketRegisterRespDto({
    required int ticketId,
    required String status,
    required String message,
  }) = _SellTicketRegisterRespDto;

  factory SellTicketRegisterRespDto.fromJson(Map<String, dynamic> json) =>
      _$SellTicketRegisterRespDtoFromJson(json);
}

/// 내 티켓 목록 아이템
@freezed
abstract class SellMyTicketRespDto with _$SellMyTicketRespDto {
  const factory SellMyTicketRespDto({
    required int ticketId,
    required String title,
    required String eventDatetime,
    required String seatInfo,
    required int quantity,
    required int remainingQuantity,
    required int price,
    required int originalPrice,
    required String status,
    required String createdAt,
    String? thumbnailUrl,
  }) = _SellMyTicketRespDto;

  factory SellMyTicketRespDto.fromJson(Map<String, dynamic> json) =>
      _$SellMyTicketRespDtoFromJson(json);
}

/// 내 티켓 목록 페이지 응답
@freezed
abstract class SellMyTicketsPageRespDto with _$SellMyTicketsPageRespDto {
  const factory SellMyTicketsPageRespDto({
    required List<SellMyTicketRespDto> tickets,
    required int totalCount,
    required int currentPage,
    required int pageSize,
    required int totalPages,
  }) = _SellMyTicketsPageRespDto;

  factory SellMyTicketsPageRespDto.fromJson(Map<String, dynamic> json) =>
      _$SellMyTicketsPageRespDtoFromJson(json);
}

/// 티켓 취소 응답
@freezed
abstract class SellTicketCancelRespDto with _$SellTicketCancelRespDto {
  const factory SellTicketCancelRespDto({
    required int ticketId,
    required String status,
    required String message,
  }) = _SellTicketCancelRespDto;

  factory SellTicketCancelRespDto.fromJson(Map<String, dynamic> json) =>
      _$SellTicketCancelRespDtoFromJson(json);
}

extension SellMyTicketRespDtoX on SellMyTicketRespDto {
  SellMyTicketEntity toEntity() => SellMyTicketEntity(
    ticketId: ticketId,
    title: title,
    eventDatetime: DateTime.parse(eventDatetime),
    seatInfo: seatInfo,
    quantity: quantity,
    remainingQuantity: remainingQuantity,
    price: price,
    originalPrice: originalPrice,
    status: status,
    createdAt: DateTime.parse(createdAt),
    thumbnailUrl: thumbnailUrl,
  );
}
