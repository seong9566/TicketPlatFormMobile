// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sell_schedule_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SellScheduleRespDto _$SellScheduleRespDtoFromJson(Map<String, dynamic> json) =>
    _SellScheduleRespDto(
      scheduleId: json['scheduleId'] as String,
      date: json['date'] as String,
      time: json['time'] as String,
      dayOfWeek: json['dayOfWeek'] as String,
    );

Map<String, dynamic> _$SellScheduleRespDtoToJson(
  _SellScheduleRespDto instance,
) => <String, dynamic>{
  'scheduleId': instance.scheduleId,
  'date': instance.date,
  'time': instance.time,
  'dayOfWeek': instance.dayOfWeek,
};

_SellSchedulesRespDto _$SellSchedulesRespDtoFromJson(
  Map<String, dynamic> json,
) => _SellSchedulesRespDto(
  schedules: (json['schedules'] as List<dynamic>)
      .map((e) => SellScheduleRespDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SellSchedulesRespDtoToJson(
  _SellSchedulesRespDto instance,
) => <String, dynamic>{'schedules': instance.schedules};
