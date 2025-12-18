import 'package:freezed_annotation/freezed_annotation.dart';

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
}

@freezed
abstract class TicketGradeInfo with _$TicketGradeInfo {
  const factory TicketGradeInfo({
    required String id,
    required String name, // e.g., '전체좌석', 'VIP석', 'R석', 'S석'
    required int count,
  }) = _TicketGradeInfo;
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
    required String description,
    @Default('1인 1매') String ticketCountInfo,
    @Default([])
    List<String>
    transactionFeatures, // ['배송지 변경', '안심결제 가능', '예매 내역서', '연석 보유']
    String? listingImageUrl,
  }) = _TicketListingUiModel;
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
}
