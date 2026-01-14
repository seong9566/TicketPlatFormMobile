import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/providers/sell_providers_di.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/ui_models/sell_seat_option_ui_model.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/viewmodels/sell_seat_info_state.dart';

part 'sell_seat_info_viewmodel.g.dart';

@riverpod
class SellSeatInfoViewModel extends _$SellSeatInfoViewModel {
  late int _eventId;

  @override
  Future<SellSeatInfoState> build(int eventId) async {
    _eventId = eventId;
    return _loadSeatOptions();
  }

  Future<SellSeatInfoState> _loadSeatOptions() async {
    final usecase = ref.read(getSellSeatOptionsUsecaseProvider);
    final entity = await usecase.call(_eventId);

    // Entity → UiModel 변환
    final uiModel = SellSeatOptionsUiModel.fromEntity(entity);

    return SellSeatInfoState(seatOptions: uiModel);
  }

  /// 위치 선택
  void selectLocation(String locationId) {
    state.whenData((data) {
      final isCustom = locationId == 'custom';
      state = AsyncValue.data(
        data.copyWith(
          selectedLocationId: isCustom ? null : locationId,
          isCustomLocation: isCustom,
          customLocation: isCustom ? data.customLocation : '',
        ),
      );
    });
  }

  /// 직접 입력 위치 업데이트
  void updateCustomLocation(String value) {
    state.whenData((data) {
      state = AsyncValue.data(data.copyWith(customLocation: value));
    });
  }

  /// 구역 업데이트
  void updateArea(String value) {
    state.whenData((data) {
      state = AsyncValue.data(data.copyWith(area: value));
    });
  }

  /// 열 업데이트
  void updateRow(String value) {
    state.whenData((data) {
      state = AsyncValue.data(data.copyWith(row: value));
    });
  }

  /// 새로고침
  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _loadSeatOptions());
  }
}
