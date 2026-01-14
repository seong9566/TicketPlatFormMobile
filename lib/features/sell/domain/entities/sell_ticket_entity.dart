import 'package:freezed_annotation/freezed_annotation.dart';

part 'sell_ticket_entity.freezed.dart';

/// 내 판매 티켓
@freezed
abstract class SellMyTicketEntity with _$SellMyTicketEntity {
  const factory SellMyTicketEntity({
    required int ticketId,
    required String title,
    required DateTime eventDatetime,
    required String seatInfo,
    required int quantity,
    required int remainingQuantity,
    required int price,
    required int originalPrice,
    required String status,
    required DateTime createdAt,
    String? thumbnailUrl,
  }) = _SellMyTicketEntity;
}

/// 내 티켓 목록 페이지
@freezed
abstract class SellMyTicketsPageEntity with _$SellMyTicketsPageEntity {
  const factory SellMyTicketsPageEntity({
    required List<SellMyTicketEntity> tickets,
    required int totalCount,
    required int currentPage,
    required int pageSize,
    required int totalPages,
  }) = _SellMyTicketsPageEntity;
}

/// 티켓 등록 결과
@freezed
abstract class SellTicketRegisterResult with _$SellTicketRegisterResult {
  const factory SellTicketRegisterResult({
    required int ticketId,
    required String status,
    required String message,
  }) = _SellTicketRegisterResult;
}

/// 티켓 취소 결과
@freezed
abstract class SellTicketCancelResult with _$SellTicketCancelResult {
  const factory SellTicketCancelResult({
    required int ticketId,
    required String status,
    required String message,
  }) = _SellTicketCancelResult;
}
