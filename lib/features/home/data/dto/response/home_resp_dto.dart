import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/home/domain/entities/home_entity.dart';

part 'home_resp_dto.freezed.dart';
part 'home_resp_dto.g.dart';

@freezed
abstract class HomeRespDto with _$HomeRespDto {
  const factory HomeRespDto({
    required List<PopularEventDto> popularEvents,
    required List<RecommendedEventDto> recommendedEvents,
  }) = _HomeRespDto;

  factory HomeRespDto.fromJson(Map<String, dynamic> json) =>
      _$HomeRespDtoFromJson(json);
}

extension HomeRespDtoX on HomeRespDto {
  HomeEntity toEntity() => HomeEntity(
    popularEvents: popularEvents.map((e) => e.toEntity()).toList(),
    recommendedEvents: recommendedEvents.map((e) => e.toEntity()).toList(),
  );
}

@freezed
abstract class PopularEventDto with _$PopularEventDto {
  const factory PopularEventDto({
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
  }) = _PopularEventDto;

  factory PopularEventDto.fromJson(Map<String, dynamic> json) =>
      _$PopularEventDtoFromJson(json);
}

extension PopularEventDtoX on PopularEventDto {
  PopularEventEntity toEntity() => PopularEventEntity(
    eventId: eventId,
    eventTitle: eventTitle,
    eventDescription: eventDescription,
    eventDate: eventDate,
    venue: venue,
    minTicketPrice: minTicketPrice,
    originalMinTicketPrice: originalMinTicketPrice,
    ticketDiscountRate: ticketDiscountRate,
    posterImageUrl: posterImageUrl,
    availableTicketCount: availableTicketCount,
    categoryId: categoryId,
  );
}

@freezed
abstract class RecommendedEventDto with _$RecommendedEventDto {
  const factory RecommendedEventDto({
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
  }) = _RecommendedEventDto;

  factory RecommendedEventDto.fromJson(Map<String, dynamic> json) =>
      _$RecommendedEventDtoFromJson(json);
}

extension RecommendedEventDtoX on RecommendedEventDto {
  RecommendedEventEntity toEntity() => RecommendedEventEntity(
    eventId: eventId,
    eventTitle: eventTitle,
    eventDescription: eventDescription,
    eventDate: eventDate,
    venue: venue,
    minTicketPrice: minTicketPrice,
    originalMinTicketPrice: originalMinTicketPrice,
    ticketDiscountRate: ticketDiscountRate,
    posterImageUrl: posterImageUrl,
    availableTicketCount: availableTicketCount,
    categoryId: categoryId,
    isWishedByMe: isWishedByMe,
  );
}
