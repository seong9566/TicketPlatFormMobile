import 'package:freezed_annotation/freezed_annotation.dart';

part 'sell_schedule_entity.freezed.dart';

@freezed
abstract class SellScheduleEntity with _$SellScheduleEntity {
  const factory SellScheduleEntity({
    required String scheduleId,
    required String date,
    required String time,
    required String dayOfWeek,
  }) = _SellScheduleEntity;
}
