import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/domain/entities/event_group_entity.dart';

part 'sales_dashboard_resp_dto.freezed.dart';
part 'sales_dashboard_resp_dto.g.dart';

@freezed
abstract class SalesDashboardRespDto with _$SalesDashboardRespDto {
  const factory SalesDashboardRespDto({
    required List<EventGroupItemDto> eventGroups,
    required int page,
    required int size,
    required int totalCount,
    required bool hasMore,
  }) = _SalesDashboardRespDto;

  factory SalesDashboardRespDto.fromJson(Map<String, dynamic> json) =>
      _$SalesDashboardRespDtoFromJson(json);
}

@freezed
abstract class EventGroupItemDto with _$EventGroupItemDto {
  const factory EventGroupItemDto({
    required int eventId,
    required String eventTitle,
    String? posterImageUrl,
    String? venueName,
    String? earliestEventDatetime,
    required int totalCount,
    required int onSaleCount,
    required int completedCount,
    required int settlingCount,
    String? representativeSeatInfo,
  }) = _EventGroupItemDto;

  factory EventGroupItemDto.fromJson(Map<String, dynamic> json) =>
      _$EventGroupItemDtoFromJson(json);
}

extension SalesDashboardRespDtoX on SalesDashboardRespDto {
  SalesDashboardEntity toEntity() {
    return SalesDashboardEntity(
      eventGroups: eventGroups.map((e) => e.toEntity()).toList(),
      page: page,
      size: size,
      totalCount: totalCount,
      hasMore: hasMore,
    );
  }
}

extension EventGroupItemDtoX on EventGroupItemDto {
  EventGroupEntity toEntity() {
    return EventGroupEntity(
      eventId: eventId,
      eventTitle: eventTitle,
      posterImageUrl: posterImageUrl,
      venueName: venueName,
      earliestEventDatetime: earliestEventDatetime != null
          ? DateTime.parse(earliestEventDatetime!)
          : null,
      totalCount: totalCount,
      onSaleCount: onSaleCount,
      completedCount: completedCount,
      settlingCount: settlingCount,
      representativeSeatInfo: representativeSeatInfo,
    );
  }
}
