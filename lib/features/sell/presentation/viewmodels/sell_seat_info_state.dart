import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/ui_models/sell_seat_option_ui_model.dart';

part 'sell_seat_info_state.freezed.dart';

@freezed
abstract class SellSeatInfoState with _$SellSeatInfoState {
  const factory SellSeatInfoState({
    @Default(null) SellSeatOptionsUiModel? seatOptions,
    @Default(null) String? selectedLocationId,
    @Default(false) bool isCustomLocation,
    @Default('') String customLocation,
    @Default('') String area,
    @Default('') String row,
  }) = _SellSeatInfoState;
}

extension SellSeatInfoStateX on SellSeatInfoState {
  /// 선택된 위치 이름 (직접 입력 또는 선택된 위치)
  String? get selectedLocationName {
    if (isCustomLocation) {
      return customLocation.isNotEmpty ? customLocation : null;
    }
    if (selectedLocationId == null || seatOptions == null) return null;
    try {
      return seatOptions!.locations
          .firstWhere((l) => l.locationId == selectedLocationId)
          .locationName;
    } catch (_) {
      return null;
    }
  }

  /// 유효성 검사
  bool get isValid {
    final locationValid = isCustomLocation
        ? customLocation.isNotEmpty
        : selectedLocationId != null;
    return locationValid && area.isNotEmpty && row.isNotEmpty;
  }

  /// 직접 입력 포함한 위치 목록
  List<SellSeatLocationUiModel> get allLocations {
    if (seatOptions == null) return [];
    final list = <SellSeatLocationUiModel>[];
    if (seatOptions!.allowCustomLocation) {
      list.add(
        const SellSeatLocationUiModel(
          locationId: 'custom',
          locationName: '직접 입력',
        ),
      );
    }
    list.addAll(seatOptions!.locations);
    return list;
  }
}
