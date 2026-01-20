import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/entities/ticketing_info_entity.dart';

part 'ticketing_resp_dto.freezed.dart';
part 'ticketing_resp_dto.g.dart';

@freezed
abstract class TicketingRespDto with _$TicketingRespDto {
  const factory TicketingRespDto({
    required int eventId,
    required String eventTitle,
    String? eventPosterImageUrl,
    String? startAt,
    String? endAt,
    String? venueName,
    String? venueAddress,
    int? artistId,
    String? artistName,
    @Default(false) bool isSoldOutImminent,
    @Default([]) List<TicketingSeatTypeFilterRespDto> seatTypeFilters,
    @Default([]) List<TicketingTicketRespDto> tickets,
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
      startAt: startAt != null ? DateTime.parse(startAt!) : null,
      endAt: endAt != null ? DateTime.parse(endAt!) : null,
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
    @Default('') String seatTypeName,
    @Default(0) int ticketCount,
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

/// 티켓 특이사항 DTO
@freezed
abstract class TicketFeatureDto with _$TicketFeatureDto {
  const factory TicketFeatureDto({
    required int featureId,
    required String code,
    required String nameKo,
  }) = _TicketFeatureDto;

  factory TicketFeatureDto.fromJson(Map<String, dynamic> json) =>
      _$TicketFeatureDtoFromJson(json);
}

extension TicketFeatureDtoX on TicketFeatureDto {
  TicketFeatureEntity toEntity() {
    return TicketFeatureEntity(id: featureId, code: code, name: nameKo);
  }
}

/// 티켓 목록 응답 DTO (API 스펙 기준)
@freezed
abstract class TicketingTicketRespDto with _$TicketingTicketRespDto {
  const factory TicketingTicketRespDto({
    required int ticketId,
    int? seatGradeId,
    String? seatGradeCode,
    String? seatGradeName,
    String? seatGradeNameEn,
    int? areaId,
    String? area,
    int? locationId,
    String? locationName,
    String? row,
    @Default(0) int price,
    @Default(0) int originalPrice,
    bool? isConsecutive,
    int? tradeMethodId,
    String? tradeMethodName,
    @Default([]) List<TicketFeatureDto> features,
    bool? hasTicket,
    String? description,
    required String createdAt,
    @Default(0) int quantity,
    @Default(0) int remainingQuantity,
    @Default(false) bool isSingleTicket,
    @Default([]) List<String> ticketImages,
    bool? isFavorited,
    required TicketingSellerRespDto seller,
  }) = _TicketingTicketRespDto;

  factory TicketingTicketRespDto.fromJson(Map<String, dynamic> json) =>
      _$TicketingTicketRespDtoFromJson(json);
}

extension TicketingTicketRespDtoX on TicketingTicketRespDto {
  TicketingTicketEntity toEntity() {
    return TicketingTicketEntity(
      ticketId: ticketId,
      seatGradeId: seatGradeId,
      seatGradeName: seatGradeName,
      area: area,
      row: row,
      price: price,
      originalPrice: originalPrice,
      isConsecutive: isConsecutive,
      tradeMethodId: tradeMethodId,
      tradeMethodName: tradeMethodName,
      features: features.map((e) => e.toEntity()).toList(),
      hasTicket: hasTicket,
      description: description,
      createdAt: DateTime.parse(createdAt),
      quantity: quantity,
      remainingQuantity: remainingQuantity,
      isSingleTicket: isSingleTicket,
      ticketImages: ticketImages,
      isFavorited: isFavorited,
      seller: seller.toEntity(),
    );
  }
}

/// 판매자 정보 DTO
@freezed
abstract class TicketingSellerRespDto with _$TicketingSellerRespDto {
  const factory TicketingSellerRespDto({
    required int userId,
    String? nickname,
    String? profileImageUrl,
    double? mannerTemperature,
    @Default(0) int totalTradeCount,
    double? responseRate,
    @Default(false) bool isSecurePayment,
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
      totalTradeCount: totalTradeCount,
      responseRate: responseRate,
      isSecurePayment: isSecurePayment,
    );
  }
}
