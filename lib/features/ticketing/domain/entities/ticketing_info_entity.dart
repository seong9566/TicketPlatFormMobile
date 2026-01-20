import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticketing_info_entity.freezed.dart';

@freezed
abstract class TicketingInfoEntity with _$TicketingInfoEntity {
  const factory TicketingInfoEntity({
    required int eventId,
    required String eventTitle,
    String? eventPosterImageUrl,
    DateTime? startAt,
    DateTime? endAt,
    String? venueName,
    String? venueAddress,
    int? artistId,
    String? artistName,
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

/// 티켓 특이사항 Entity
@freezed
abstract class TicketFeatureEntity with _$TicketFeatureEntity {
  const factory TicketFeatureEntity({
    required int id,
    required String code,
    required String name,
  }) = _TicketFeatureEntity;
}

/// 티켓 목록 Entity (API 스펙 기준)
@freezed
abstract class TicketingTicketEntity with _$TicketingTicketEntity {
  const factory TicketingTicketEntity({
    required int ticketId,
    int? seatGradeId,
    String? seatGradeName,
    String? area,
    String? row,
    required int price,
    required int originalPrice,
    bool? isConsecutive,
    int? tradeMethodId,
    String? tradeMethodName,
    List<TicketFeatureEntity>? features,
    bool? hasTicket,
    String? description,
    required DateTime createdAt,
    required int quantity,
    required int remainingQuantity,
    required bool isSingleTicket,
    required List<String> ticketImages,
    bool? isFavorited,
    required TicketingSellerEntity seller,
  }) = _TicketingTicketEntity;
}

/// 판매자 정보 Entity
@freezed
abstract class TicketingSellerEntity with _$TicketingSellerEntity {
  const factory TicketingSellerEntity({
    required int userId,
    String? nickname,
    String? profileImageUrl,
    double? mannerTemperature,
    required int totalTradeCount,
    double? responseRate,
    required bool isSecurePayment,
  }) = _TicketingSellerEntity;
}
