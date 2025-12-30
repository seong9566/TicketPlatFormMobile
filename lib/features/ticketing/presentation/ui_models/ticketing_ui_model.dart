import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/entities/ticketing_info_entity.dart';

part 'ticketing_ui_model.freezed.dart';

@freezed
abstract class TicketingUiModel with _$TicketingUiModel {
  const factory TicketingUiModel({
    required String id,
    required String title,
    required String imageUrl,
    required DateTime eventDate,
    required String location,
    required List<TicketGradeInfo> ticketGrades,
    required List<TicketListingUiModel> listings,
    @Default(false) bool isHot,
  }) = _TicketingUiModel;

  factory TicketingUiModel.fromEntity(TicketingInfoEntity entity) {
    return TicketingUiModel(
      id: entity.eventId.toString(),
      title: entity.eventTitle,
      imageUrl: entity.eventPosterImageUrl,
      eventDate: entity.startAt,
      location: entity.venueName,
      ticketGrades: entity.seatTypeFilters
          .map((e) => TicketGradeInfo.fromEntity(e))
          .toList(),
      listings: entity.tickets
          .map((e) => TicketListingUiModel.fromEntity(e))
          .toList(),
      isHot: entity.isSoldOutImminent,
    );
  }
}

@freezed
abstract class TicketGradeInfo with _$TicketGradeInfo {
  const factory TicketGradeInfo({
    required String id,
    required String name, // e.g., '전체좌석', 'VIP석', 'R석', 'S석'
    required int count,
  }) = _TicketGradeInfo;

  factory TicketGradeInfo.fromEntity(TicketingSeatTypeFilterEntity entity) {
    return TicketGradeInfo(
      id: entity.seatTypeName,
      name: entity.seatTypeName,
      count: entity.ticketCount,
    );
  }
}

@freezed
abstract class TicketListingUiModel with _$TicketListingUiModel {
  const factory TicketListingUiModel({
    required String id,
    required String gradeName, // 'VIP석', 'R석'
    required String seatInfo, // '1층 5구역 3열'
    required int price,
    required int originalPrice,
    required List<String> tags, // ['연석 보유', '시야제한 없음']
    required SellerUiModel seller,
    required String? description,
    required DateTime createdAt,
    @Default('1인 1매') String ticketCountInfo,
    @Default([])
    List<String>
    transactionFeatures, // ['배송지 변경', '안심결제 가능', '예매 내역서', '연석 보유']
    String? listingImageUrl,
  }) = _TicketListingUiModel;

  factory TicketListingUiModel.fromEntity(TicketingTicketEntity entity) {
    return TicketListingUiModel(
      id: entity.ticketId.toString(),
      gradeName: entity.seatType,
      seatInfo: entity.seatInfo,
      price: entity.price,
      originalPrice: entity.originalPrice,
      tags: entity.seatFeatures,
      seller: SellerUiModel.fromEntity(entity.seller),
      description: entity.description,
      createdAt: entity.createdAt,
      transactionFeatures:
          entity.seatFeatures, // For now mapping features to features
    );
  }
}

@freezed
abstract class SellerUiModel with _$SellerUiModel {
  const factory SellerUiModel({
    required String id,
    required String nickname,
    required String profileImageUrl,
    required double mannerTemperature, // '매너 99.9'
    @Default(98) int responseRate,
    @Default(15) int transactionCount,
  }) = _SellerUiModel;

  factory SellerUiModel.fromEntity(TicketingSellerEntity entity) {
    return SellerUiModel(
      id: entity.userId.toString(),
      nickname: entity.nickname,
      profileImageUrl: entity.profileImageUrl,
      mannerTemperature: entity.mannerTemperature,
    );
  }
}
