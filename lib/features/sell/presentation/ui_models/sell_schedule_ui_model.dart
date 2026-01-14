import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_schedule_entity.dart';

part 'sell_schedule_ui_model.freezed.dart';

@freezed
abstract class SellScheduleUiModel with _$SellScheduleUiModel {
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
}
