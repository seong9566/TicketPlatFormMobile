import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/home/domain/entities/home_entity.dart';

part 'home_resp_dto.freezed.dart';
part 'home_resp_dto.g.dart';

@freezed
abstract class HomeRespDto with _$HomeRespDto {
  const factory HomeRespDto({
    required List<PopularTicketDto> popularTickets,
    required List<RecommendedEventDto> recommendedEvents,
  }) = _HomeRespDto;

  factory HomeRespDto.fromJson(Map<String, dynamic> json) =>
      _$HomeRespDtoFromJson(json);
}

extension HomeRespDtoX on HomeRespDto {
  HomeEntity toEntity() => HomeEntity(
    popularTickets: popularTickets.map((e) => e.toEntity()).toList(),
    recommendedEvents: recommendedEvents.map((e) => e.toEntity()).toList(),
  );
}

@freezed
abstract class PopularTicketDto with _$PopularTicketDto {
  const factory PopularTicketDto({
    required int ticketId,
    required String ticketTitle,
    required int price,
    String? posterImageUrl,
    String? eventTitle,
    String? eventDate,
  }) = _PopularTicketDto;

  factory PopularTicketDto.fromJson(Map<String, dynamic> json) =>
      _$PopularTicketDtoFromJson(json);
}

extension PopularTicketDtoX on PopularTicketDto {
  PopularTicketEntity toEntity() => PopularTicketEntity(
    ticketId: ticketId,
    ticketTitle: ticketTitle,
    price: price,
    posterImageUrl: posterImageUrl,
    eventTitle: eventTitle,
    eventDate: eventDate ?? '',
  );
}

@freezed
abstract class RecommendedEventDto with _$RecommendedEventDto {
  const factory RecommendedEventDto({
    required int eventId,
    required String eventTitle,
    required String posterImageUrl,
    required String eventDate,
    required int ticketCount,
  }) = _RecommendedEventDto;

  factory RecommendedEventDto.fromJson(Map<String, dynamic> json) =>
      _$RecommendedEventDtoFromJson(json);
}

extension RecommendedEventDtoX on RecommendedEventDto {
  RecommendedEventEntity toEntity() => RecommendedEventEntity(
    eventId: eventId,
    eventTitle: eventTitle,
    posterImageUrl: posterImageUrl,
    eventDate: eventDate,
    ticketCount: ticketCount,
  );
}
