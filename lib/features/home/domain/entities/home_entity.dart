import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_entity.freezed.dart';

@freezed
abstract class HomeEntity with _$HomeEntity {
  const factory HomeEntity({
    required List<PopularTicketEntity> popularTickets,
    required List<RecommendedEventEntity> recommendedEvents,
  }) = _HomeEntity;
}

@freezed
abstract class PopularTicketEntity with _$PopularTicketEntity {
  const factory PopularTicketEntity({
    required int ticketId,
    required String ticketTitle,
    required int price,
    String? posterImageUrl,
    String? eventTitle,
    required String eventDate,
  }) = _PopularTicketEntity;
}

@freezed
abstract class RecommendedEventEntity with _$RecommendedEventEntity {
  const factory RecommendedEventEntity({
    required int eventId,
    required String eventTitle,
    required String posterImageUrl,
    required String eventDate,
    required int ticketCount,
  }) = _RecommendedEventEntity;
}
