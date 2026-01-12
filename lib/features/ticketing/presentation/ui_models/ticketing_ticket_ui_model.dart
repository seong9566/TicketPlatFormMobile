import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/entities/ticketing_info_entity.dart';

part 'ticketing_ticket_ui_model.freezed.dart';

/// 티켓 정보 UI 모델
/// title : 티켓 제목
/// gradeName(seatType) : 좌석 등급
/// seatInfo : 좌석 정보
/// price : 티켓 가격
/// originalPrice : 원가격
/// tags(seatFeatures) : 티켓 태그
/// seller : 판매자 정보
/// description : 티켓 설명
/// createdAt : 생성일
/// ticketCountInfo : 티켓 수
/// transactionFeatures : 티켓 특징
/// listingImageUrl : 티켓 이미지
/// isFavorited : 즐겨찾기
@freezed
abstract class TicketingTicketUiModel with _$TicketingTicketUiModel {
  const factory TicketingTicketUiModel({
    required int ticketId,
    required String title,
    required String gradeName, // seatType
    required String? seatInfo,
    required int price,
    required int originalPrice,
    required List<String> tags,
    required TicketingSellerUiModel seller,
    required String? description,
    required DateTime createdAt,
    @Default('1인 1매') String ticketCountInfo,
    @Default([]) List<String> transactionFeatures,
    String? listingImageUrl,
    @Default(false) bool isFavorited,
  }) = _TicketingTicketUiModel;

  factory TicketingTicketUiModel.fromEntity(TicketingTicketEntity entity) {
    return TicketingTicketUiModel(
      ticketId: entity.ticketId,
      title: entity.ticketTitle,
      gradeName: entity.seatType ?? '일반',
      seatInfo: entity.seatInfo,
      price: entity.price,
      originalPrice: entity.originalPrice,
      tags: entity.seatFeatures,
      seller: TicketingSellerUiModel.fromEntity(entity.seller),
      description: entity.description,
      createdAt: entity.createdAt,
      transactionFeatures: entity.seatFeatures,
      isFavorited: entity.isFavorited ?? false,
    );
  }
}

@freezed
abstract class TicketingSellerUiModel with _$TicketingSellerUiModel {
  const factory TicketingSellerUiModel({
    required int userId,
    required String nickname,
    required String profileImageUrl,
    required double mannerTemperature,
    required int totalTradeCount,
    required int? responseRate,
    @Default(false) bool isSecurePayment,
    @Default(98) int responseRateManual,
    @Default(15) int transactionCountManual,
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
