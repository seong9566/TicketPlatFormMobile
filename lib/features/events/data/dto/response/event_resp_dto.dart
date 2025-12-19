import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/core/enums/category.dart';
import 'package:ticket_platform_mobile/features/events/domain/entities/event_entity.dart';

part 'event_resp_dto.freezed.dart';
part 'event_resp_dto.g.dart';

@freezed
abstract class EventRespDto with _$EventRespDto {
  const factory EventRespDto({
    required int eventId,
    required String eventTitle,
    required String eventPosterImageUrl,
    required String startAt,
    required String endAt,
    required String venueName,
    required int artistId,
    required String artistName,
    required String artistProfileImageUrl,
    required String eventCreatedAt,
    required bool isNew,
  }) = _EventRespDto;

  factory EventRespDto.fromJson(Map<String, dynamic> json) =>
      _$EventRespDtoFromJson(json);
}

extension EventRespDtoX on EventRespDto {
  EventEntity toEntity(Category category) {
    return EventEntity(
      id: eventId.toString(),
      title: eventTitle,
      posterImageUrl: eventPosterImageUrl,
      startDate: DateTime.parse(startAt),
      endDate: DateTime.parse(endAt),
      location: venueName,
      category: category,
    );
  }
}

@freezed
abstract class EventListRespDto with _$EventListRespDto {
  const factory EventListRespDto({@Default([]) List<EventRespDto> data}) =
      _EventListRespDto;

  factory EventListRespDto.fromJson(Map<String, dynamic> json) =>
      _$EventListRespDtoFromJson(json);
}
