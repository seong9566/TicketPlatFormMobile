import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/entities/ticketing_info_entity.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_ticket_ui_model.dart';

part 'ticketing_info_ui_model.freezed.dart';

@freezed
abstract class TicketingInfoUiModel with _$TicketingInfoUiModel {
  const factory TicketingInfoUiModel({
    required String title,
    required String imageUrl,
    required DateTime eventDate,
    required String location,
    required bool isHot,
    required List<TicketingGradeUiModel> ticketGrades,
    required List<TicketingTicketUiModel> tickets,
    @Default('가격 낮은순') String sortBy,
  }) = _TicketingInfoUiModel;

  factory TicketingInfoUiModel.fromEntity(TicketingInfoEntity entity) {
    return TicketingInfoUiModel(
      title: entity.eventTitle,
      imageUrl: entity.eventPosterImageUrl,
      eventDate: entity.startAt,
      location: entity.venueName,
      isHot: entity.isSoldOutImminent,
      ticketGrades: entity.seatTypeFilters
          .map((e) => TicketingGradeUiModel.fromEntity(e))
          .toList(),
      tickets: entity.tickets
          .map((e) => TicketingTicketUiModel.fromEntity(e))
          .toList(),
    );
  }
}

@freezed
abstract class TicketingGradeUiModel with _$TicketingGradeUiModel {
  const factory TicketingGradeUiModel({
    required String id,
    required String name,
    required int count,
  }) = _TicketingGradeUiModel;

  factory TicketingGradeUiModel.fromEntity(
    TicketingSeatTypeFilterEntity entity,
  ) {
    return TicketingGradeUiModel(
      id: entity.seatTypeName,
      name: entity.seatTypeName,
      count: entity.ticketCount,
    );
  }
}
