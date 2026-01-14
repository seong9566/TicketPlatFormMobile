import 'package:freezed_annotation/freezed_annotation.dart';

part 'sell_event_entity.freezed.dart';

@freezed
abstract class SellEventEntity with _$SellEventEntity {
  const factory SellEventEntity({
    required int eventId,
    required String title,
    String? posterImageUrl,
    required String venueName,
    required DateTime startAt,
    required DateTime endAt,
  }) = _SellEventEntity;
}

@freezed
abstract class SellEventsPageEntity with _$SellEventsPageEntity {
  const factory SellEventsPageEntity({
    required List<SellEventEntity> events,
    required int totalCount,
    required int currentPage,
    required int pageSize,
    required int totalPages,
  }) = _SellEventsPageEntity;
}
