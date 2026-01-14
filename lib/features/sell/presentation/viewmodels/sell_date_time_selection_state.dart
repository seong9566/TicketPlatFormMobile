import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/ui_models/sell_schedule_ui_model.dart';

part 'sell_date_time_selection_state.freezed.dart';

@freezed
abstract class SellDateTimeSelectionState with _$SellDateTimeSelectionState {
  const factory SellDateTimeSelectionState({
    @Default([]) List<SellScheduleUiModel> schedules,
    @Default(null) DateTime? selectedDate,
    @Default(null) String? selectedScheduleId,
  }) = _SellDateTimeSelectionState;
}

/// State 확장 - UI 헬퍼 메서드
extension SellDateTimeSelectionStateX on SellDateTimeSelectionState {
  /// 날짜별로 그룹화된 스케줄 맵
  Map<DateTime, List<SellScheduleUiModel>> get schedulesByDate {
    final map = <DateTime, List<SellScheduleUiModel>>{};
    for (final schedule in schedules) {
      final dateKey = DateTime(
        schedule.date.year,
        schedule.date.month,
        schedule.date.day,
      );
      map.putIfAbsent(dateKey, () => []).add(schedule);
    }
    return map;
  }

  /// 사용 가능한 날짜 목록
  List<DateTime> get availableDates => schedulesByDate.keys.toList();

  /// 선택된 날짜의 시간대 목록
  List<SellScheduleUiModel> get selectedDateSchedules {
    if (selectedDate == null) return [];
    final dateKey = DateTime(
      selectedDate!.year,
      selectedDate!.month,
      selectedDate!.day,
    );
    return schedulesByDate[dateKey] ?? [];
  }

  /// 선택된 스케줄
  SellScheduleUiModel? get selectedSchedule {
    if (selectedScheduleId == null) return null;
    try {
      return schedules.firstWhere((s) => s.scheduleId == selectedScheduleId);
    } catch (_) {
      return null;
    }
  }
}
