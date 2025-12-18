import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/event/domain/entities/event_session.dart';

part 'event_session_resp_dto.freezed.dart';
part 'event_session_resp_dto.g.dart';

@freezed
abstract class EventSessionRespDto with _$EventSessionRespDto {
  const factory EventSessionRespDto({
    required int id,
    required String name,
    required String englishName,
    required String title,
    required String imageUrl,
    @Default(false) bool isNew,
    @Default(false) bool isHot,
    @Default(false) bool isSoldOut,
    @Default(0) int ticketCount,
  }) = _EventSessionRespDto;

  factory EventSessionRespDto.fromJson(Map<String, dynamic> json) =>
      _$EventSessionRespDtoFromJson(json);
}

extension EventSessionRespDtoExtension on EventSessionRespDto {
  EventSession toEntity() {
    return EventSession(
      id: id,
      name: name,
      englishName: englishName,
      title: title,
      imageUrl: imageUrl,
      isNew: isNew,
      isHot: isHot,
      isSoldOut: isSoldOut,
      ticketCount: ticketCount,
    );
  }
}
