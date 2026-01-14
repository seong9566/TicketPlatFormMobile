import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/providers/sell_providers_di.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/ui_models/sell_schedule_ui_model.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/viewmodels/sell_date_time_selection_state.dart';

part 'sell_date_time_selection_viewmodel.g.dart';

@riverpod
class SellDateTimeSelectionViewModel extends _$SellDateTimeSelectionViewModel {
  late int _eventId;

  @override
  Future<SellDateTimeSelectionState> build(int eventId) async {
    _eventId = eventId;
    return _loadSchedules();
  }

  Future<SellDateTimeSelectionState> _loadSchedules() async {
    final usecase = ref.read(getSellSchedulesUsecaseProvider);
    final entities = await usecase.call(_eventId);

    // Entity → UiModel 변환
    final uiModels = entities
        .map((e) => SellScheduleUiModel.fromEntity(e))
        .toList();

    return SellDateTimeSelectionState(schedules: uiModels);
  }

  /// 날짜 선택
  void selectDate(DateTime? date) {
    state.whenData((data) {
      state = AsyncValue.data(
        data.copyWith(
          selectedDate: date,
          selectedScheduleId: null, // 날짜 변경 시 스케줄 선택 초기화
        ),
      );
    });
  }

  /// 스케줄 선택
  void selectSchedule(String? scheduleId) {
    state.whenData((data) {
      state = AsyncValue.data(data.copyWith(selectedScheduleId: scheduleId));
    });
  }

  /// 새로고침
  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _loadSchedules());
  }
}
