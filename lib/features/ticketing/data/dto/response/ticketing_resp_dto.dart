import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/entities/ticketing_info_entity.dart';

part 'ticketing_resp_dto.freezed.dart';
part 'ticketing_resp_dto.g.dart';

@freezed
abstract class TicketingRespDto with _$TicketingRespDto {
  const factory TicketingRespDto({
    required int eventId,
    required String eventTitle,
    required String eventPosterImageUrl,
    required String startAt,
    required String endAt,
    required String venueName,
    required String venueAddress,
    required int? artistId,
    required String? artistName,
    required bool isSoldOutImminent,
    required List<TicketingSeatTypeFilterRespDto> seatTypeFilters,
    required List<TicketingTicketRespDto> tickets,
  }) = _TicketingRespDto;

  factory TicketingRespDto.fromJson(Map<String, dynamic> json) =>
      _$TicketingRespDtoFromJson(json);
}

extension TicketingRespDtoX on TicketingRespDto {
  TicketingInfoEntity toEntity() {
    return TicketingInfoEntity(
      eventId: eventId,
      eventTitle: eventTitle,
      eventPosterImageUrl: eventPosterImageUrl,
      startAt: DateTime.parse(startAt),
      endAt: DateTime.parse(endAt),
      venueName: venueName,
      venueAddress: venueAddress,
      artistId: artistId,
      artistName: artistName,
      isSoldOutImminent: isSoldOutImminent,
      seatTypeFilters: seatTypeFilters.map((e) => e.toEntity()).toList(),
      tickets: tickets.map((e) => e.toEntity()).toList(),
    );
  }
}

@freezed
abstract class TicketingSeatTypeFilterRespDto
    with _$TicketingSeatTypeFilterRespDto {
  const factory TicketingSeatTypeFilterRespDto({
    required String seatTypeName,
    required int ticketCount,
  }) = _TicketingSeatTypeFilterRespDto;

  factory TicketingSeatTypeFilterRespDto.fromJson(Map<String, dynamic> json) =>
      _$TicketingSeatTypeFilterRespDtoFromJson(json);
}

extension TicketingSeatTypeFilterRespDtoX on TicketingSeatTypeFilterRespDto {
  TicketingSeatTypeFilterEntity toEntity() {
    return TicketingSeatTypeFilterEntity(
      seatTypeName: seatTypeName,
      ticketCount: ticketCount,
    );
  }
}

@freezed
abstract class TicketingTicketRespDto with _$TicketingTicketRespDto {
  const factory TicketingTicketRespDto({
    required int ticketId,
    required String ticketTitle,
    required String seatInfo,
    required String seatType,
    required int price,
    required int originalPrice,
    required List<String> seatFeatures,
    required String description,
    required String createdAt,
    required TicketingSellerRespDto seller,
  }) = _TicketingTicketRespDto;

  factory TicketingTicketRespDto.fromJson(Map<String, dynamic> json) =>
      _$TicketingTicketRespDtoFromJson(json);
}

extension TicketingTicketRespDtoX on TicketingTicketRespDto {
  TicketingTicketEntity toEntity() {
    return TicketingTicketEntity(
      ticketId: ticketId,
      ticketTitle: ticketTitle,
      seatInfo: seatInfo,
      seatType: seatType,
      price: price,
      originalPrice: originalPrice,
      seatFeatures: seatFeatures,
      description: description,
      createdAt: DateTime.parse(createdAt),
      seller: seller.toEntity(),
    );
  }
}

@freezed
abstract class TicketingSellerRespDto with _$TicketingSellerRespDto {
  const factory TicketingSellerRespDto({
    required int userId,
    required String nickname,
    required String profileImageUrl,
    required double mannerTemperature,
  }) = _TicketingSellerRespDto;

  factory TicketingSellerRespDto.fromJson(Map<String, dynamic> json) =>
      _$TicketingSellerRespDtoFromJson(json);
}

extension TicketingSellerRespDtoX on TicketingSellerRespDto {
  TicketingSellerEntity toEntity() {
    return TicketingSellerEntity(
      userId: userId,
      nickname: nickname,
      profileImageUrl: profileImageUrl,
      mannerTemperature: mannerTemperature,
    );
  }
}
