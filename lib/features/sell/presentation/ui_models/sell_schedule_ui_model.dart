import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_schedule_entity.dart';

part 'sell_schedule_ui_model.freezed.dart';

@freezed
abstract class SellScheduleUiModel with _$SellScheduleUiModel {
  const SellScheduleUiModel._();

  const factory SellScheduleUiModel({
    required String scheduleId,
    required DateTime date,
    required String time,
    required String dayOfWeek,
  }) = _SellScheduleUiModel;

  factory SellScheduleUiModel.fromEntity(SellScheduleEntity entity) {
    return SellScheduleUiModel(
      scheduleId: entity.scheduleId,
      date: DateTime.parse(entity.date),
      time: entity.time,
      dayOfWeek: entity.dayOfWeek,
    );
  }

  /// 날짜와 시간을 결합한 DateTime 반환
  DateTime get dateTime {
    try {
      final timeParts = time.split(':');
      if (timeParts.length != 2) return date;

      return DateTime(
        date.year,
        date.month,
        date.day,
        int.parse(timeParts[0]),
        int.parse(timeParts[1]),
      );
    } catch (_) {
      return date;
    }
  }
}
