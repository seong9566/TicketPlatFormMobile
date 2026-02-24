import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_group_entity.freezed.dart';

@freezed
abstract class EventGroupEntity with _$EventGroupEntity {
  const factory EventGroupEntity({
    required int eventId,
    required String eventTitle,
    String? posterImageUrl,
    String? venueName,
    DateTime? earliestEventDatetime,
    required int totalCount,
    required int onSaleCount,
    required int completedCount,
    required int settlingCount,
    String? representativeSeatInfo,
  }) = _EventGroupEntity;
}

@freezed
abstract class SalesDashboardEntity with _$SalesDashboardEntity {
  const factory SalesDashboardEntity({
    required List<EventGroupEntity> eventGroups,
    required int page,
    required int size,
    required int totalCount,
    required bool hasMore,
  }) = _SalesDashboardEntity;
}
