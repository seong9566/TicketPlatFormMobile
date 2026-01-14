import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_event_entity.dart';

part 'sell_event_resp_dto.freezed.dart';
part 'sell_event_resp_dto.g.dart';

@freezed
abstract class SellEventRespDto with _$SellEventRespDto {
  const factory SellEventRespDto({
    required int eventId,
    required String title,
    String? posterImageUrl,
    required String venueName,
    required String startAt,
    required String endAt,
  }) = _SellEventRespDto;

  factory SellEventRespDto.fromJson(Map<String, dynamic> json) =>
      _$SellEventRespDtoFromJson(json);
}

/// 페이지네이션 필드는 optional로 처리 (서버에서 제공하지 않을 수 있음)
@freezed
abstract class SellEventsPageRespDto with _$SellEventsPageRespDto {
  const factory SellEventsPageRespDto({
    required List<SellEventRespDto> events,
    @Default(0) int totalCount,
    @Default(1) int currentPage,
    @Default(20) int pageSize,
    @Default(1) int totalPages,
  }) = _SellEventsPageRespDto;

  factory SellEventsPageRespDto.fromJson(Map<String, dynamic> json) =>
      _$SellEventsPageRespDtoFromJson(json);
}

extension SellEventRespDtoX on SellEventRespDto {
  SellEventEntity toEntity() => SellEventEntity(
    eventId: eventId,
    title: title,
    posterImageUrl: posterImageUrl,
    venueName: venueName,
    startAt: DateTime.parse(startAt),
    endAt: DateTime.parse(endAt),
  );
}
