import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticketing_info_entity.freezed.dart';

@freezed
abstract class TicketingInfoEntity with _$TicketingInfoEntity {
  const factory TicketingInfoEntity({
    required int eventId,
    required String eventTitle,
    required String eventPosterImageUrl,
    required DateTime startAt,
    required DateTime endAt,
    required String venueName,
    required String venueAddress,
    required int? artistId,
    required String? artistName,
    required bool isSoldOutImminent,
    required List<TicketingSeatTypeFilterEntity> seatTypeFilters,
    required List<TicketingTicketEntity> tickets,
  }) = _TicketingInfoEntity;
}

@freezed
abstract class TicketingSeatTypeFilterEntity
    with _$TicketingSeatTypeFilterEntity {
  const factory TicketingSeatTypeFilterEntity({
    required String seatTypeName,
    required int ticketCount,
  }) = _TicketingSeatTypeFilterEntity;
}

@freezed
abstract class TicketingTicketEntity with _$TicketingTicketEntity {
  const factory TicketingTicketEntity({
    required int ticketId,
    required String ticketTitle,
    required String? seatInfo,
    required String? seatType,
    required int price,
    required int originalPrice,
    required List<String> seatFeatures,
    required String? description,
    required DateTime createdAt,
    required int? quantity,
    required int? remainingQuantity,
    required bool isSingleTicket,
    required List<String> ticketImages,
    required TicketingSellerEntity seller,
    @Default(false) bool isFavorited,
  }) = _TicketingTicketEntity;
}

@freezed
abstract class TicketingSellerEntity with _$TicketingSellerEntity {
  const factory TicketingSellerEntity({
    required int userId,
    required String nickname,
    required String profileImageUrl,
    required double mannerTemperature,
    required int totalTradeCount,
    required int? responseRate,
    required bool isSecurePayment,
  }) = _TicketingSellerEntity;
}
