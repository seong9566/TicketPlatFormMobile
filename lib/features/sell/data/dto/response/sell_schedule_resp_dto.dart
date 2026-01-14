import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_schedule_entity.dart';

part 'sell_schedule_resp_dto.freezed.dart';
part 'sell_schedule_resp_dto.g.dart';

@freezed
abstract class SellScheduleRespDto with _$SellScheduleRespDto {
  const factory SellScheduleRespDto({
    required String scheduleId,
    required String date,
    required String time,
    required String dayOfWeek,
  }) = _SellScheduleRespDto;

  factory SellScheduleRespDto.fromJson(Map<String, dynamic> json) =>
      _$SellScheduleRespDtoFromJson(json);
}

@freezed
abstract class SellSchedulesRespDto with _$SellSchedulesRespDto {
  const factory SellSchedulesRespDto({
    required List<SellScheduleRespDto> schedules,
  }) = _SellSchedulesRespDto;

  factory SellSchedulesRespDto.fromJson(Map<String, dynamic> json) =>
      _$SellSchedulesRespDtoFromJson(json);
}

extension SellScheduleRespDtoX on SellScheduleRespDto {
  SellScheduleEntity toEntity() => SellScheduleEntity(
    scheduleId: scheduleId,
    date: date,
    time: time,
    dayOfWeek: dayOfWeek,
  );
}
