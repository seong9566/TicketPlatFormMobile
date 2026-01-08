import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/entities/ticketing_info_entity.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_common_ui_model.dart';

part 'ticketing_listing_ui_model.freezed.dart';

@freezed
abstract class TicketingListingUiModel with _$TicketingListingUiModel {
  const factory TicketingListingUiModel({
    required String title,
    required String imageUrl,
    required DateTime eventDate,
    required String location,
    required bool isHot,
    required List<TicketingTicketGradeInfo> ticketGrades,
    required List<TicketingCommonUiModel> tickets,
    @Default('가격 낮은순') String sortBy,
  }) = _TicketingListingUiModel;

  factory TicketingListingUiModel.fromEntity(TicketingInfoEntity entity) {
    return TicketingListingUiModel(
      title: entity.eventTitle,
      imageUrl: entity.eventPosterImageUrl,
      eventDate: entity.startAt,
      location: entity.venueName,
      isHot: entity.isSoldOutImminent,
      ticketGrades: entity.seatTypeFilters
          .map((e) => TicketingTicketGradeInfo.fromEntity(e))
          .toList(),
      tickets: entity.tickets
          .map((e) => TicketingCommonUiModel.fromEntity(e))
          .toList(),
    );
  }
}

@freezed
abstract class TicketingTicketGradeInfo with _$TicketingTicketGradeInfo {
  const factory TicketingTicketGradeInfo({
    required String id,
    required String name,
    required int count,
  }) = _TicketingTicketGradeInfo;

  factory TicketingTicketGradeInfo.fromEntity(
    TicketingSeatTypeFilterEntity entity,
  ) {
    return TicketingTicketGradeInfo(
      id: entity.seatTypeName,
      name: entity.seatTypeName,
      count: entity.ticketCount,
    );
  }
}
