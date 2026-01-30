import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/entities/ticketing_info_entity.dart';

part 'ticketing_ticket_ui_model.freezed.dart';

/// 티켓 정보 UI 모델
/// gradeName(seatGradeName) : 좌석 등급 (예: VIP석, R석)
/// seatInfo : 구역 + 열 조합 (예: "A구역 2열")
/// price : 티켓 가격
/// originalPrice : 원가격
/// tags : 티켓 특이사항 (features의 name 리스트)
/// seller : 판매자 정보
/// description : 티켓 설명
/// createdAt : 생성일
/// ticketCountInfo : 티켓 수 정보
/// transactionFeatures : 거래 특징 (거래방식 등)
/// listingImageUrl : 티켓 썸네일 이미지
/// isFavorited : 즐겨찾기
@freezed
abstract class TicketingTicketUiModel with _$TicketingTicketUiModel {
  const factory TicketingTicketUiModel({
    required int ticketId,
    required String gradeName, // seatGradeName
    required String? seatInfo, // area + row 조합
    required int price,
    required int originalPrice,
    required List<String> tags, // features의 name들
    required TicketingSellerUiModel seller,
    required String? description,
    required DateTime createdAt,
    String? tradeMethodName,
    bool? hasTicket,
    bool? isConsecutive,
    @Default('1인 1매') String ticketCountInfo,
    @Default([]) List<String> transactionFeatures,
    String? listingImageUrl,
    @Default(false) bool isFavorited,
  }) = _TicketingTicketUiModel;

  factory TicketingTicketUiModel.fromEntity(TicketingTicketEntity entity) {
    // area와 row를 조합하여 seatInfo 생성
    final seatInfo = [
      if (entity.locationName != null) entity.locationName,
      if (entity.area != null) entity.area,
      if (entity.row != null) entity.row,
    ].where((e) => e != null && e.isNotEmpty).join(' ');

    return TicketingTicketUiModel(
      ticketId: entity.ticketId,
      gradeName: entity.seatGradeName ?? '일반',
      seatInfo: seatInfo.isNotEmpty ? seatInfo : null,
      price: entity.price,
      originalPrice: entity.originalPrice,
      tags: entity.features?.map((f) => f.name).toList() ?? [],
      seller: TicketingSellerUiModel.fromEntity(entity.seller),
      description: entity.description,
      createdAt: entity.createdAt,
      tradeMethodName: entity.tradeMethodName,
      hasTicket: entity.hasTicket,
      isConsecutive: entity.isConsecutive,
      transactionFeatures: [
        if (entity.tradeMethodName != null) entity.tradeMethodName!,
        if (entity.hasTicket == true) '티켓보유',
        if (entity.isConsecutive == true) '연석',
      ],
      isFavorited: entity.isFavorited ?? false,
      listingImageUrl: entity.ticketImages.isNotEmpty
          ? entity.ticketImages.first
          : null,
    );
  }
}

@freezed
abstract class TicketingSellerUiModel with _$TicketingSellerUiModel {
  const factory TicketingSellerUiModel({
    required int userId,
    String? nickname,
    String? profileImageUrl,
    double? mannerTemperature,
    required int totalTradeCount,
    double? responseRate,
    @Default(false) bool isSecurePayment,
  }) = _TicketingSellerUiModel;

  factory TicketingSellerUiModel.fromEntity(TicketingSellerEntity entity) {
    return TicketingSellerUiModel(
      userId: entity.userId,
      nickname: entity.nickname,
      profileImageUrl: entity.profileImageUrl,
      mannerTemperature: entity.mannerTemperature,
      totalTradeCount: entity.totalTradeCount,
      responseRate: entity.responseRate,
      isSecurePayment: entity.isSecurePayment,
    );
  }
}
