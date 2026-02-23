import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_entity.freezed.dart';

@freezed
abstract class HomeEntity with _$HomeEntity {
  const factory HomeEntity({
    required List<DeadlineDealEntity> deadlineDeals,
    required List<PopularEventEntity> popularEvents,
    required List<RecommendedEventEntity> recommendedEvents,
  }) = _HomeEntity;
}

@freezed
abstract class DeadlineDealEntity with _$DeadlineDealEntity {
  const factory DeadlineDealEntity({
    required int eventId,
    required String eventTitle,
    required String eventDate,
    required String venue,
    required int daysLeft,
    required int minTicketPrice,
    required int originalMinTicketPrice,
    required int ticketDiscountRate,
    String? posterImageUrl,
    required int availableTicketCount,
    required int categoryId,
  }) = _DeadlineDealEntity;
}

@freezed
abstract class PopularEventEntity with _$PopularEventEntity {
  const factory PopularEventEntity({
    required int eventId,
    required String eventTitle,
    String? eventDescription,
    required String eventDate,
    required String venue,
    required int minTicketPrice,
    required int originalMinTicketPrice,
    required int ticketDiscountRate,
    String? posterImageUrl,
    required int availableTicketCount,
    required int categoryId,
  }) = _PopularEventEntity;
}

@freezed
abstract class RecommendedEventEntity with _$RecommendedEventEntity {
  const factory RecommendedEventEntity({
    required int eventId,
    required String eventTitle,
    required String eventDate,
    String? eventDescription,
    required String venue,
    required int minTicketPrice,
    required int originalMinTicketPrice,
    required int ticketDiscountRate,
    String? posterImageUrl,
    required int availableTicketCount,
    required int categoryId,
    required bool isWishedByMe,
  }) = _RecommendedEventEntity;
}
