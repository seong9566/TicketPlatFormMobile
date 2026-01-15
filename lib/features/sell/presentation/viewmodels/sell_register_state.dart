import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/pagination_mixin.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/ui_models/sell_event_ui_model.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/ui_models/sell_schedule_ui_model.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/ui_models/sell_seat_option_ui_model.dart';

part 'sell_register_state.freezed.dart';

@freezed
abstract class SellRegisterState
    with _$SellRegisterState
    implements PaginableState {
  const SellRegisterState._();

  const factory SellRegisterState({
    // Step 1: 공연 선택
    @Default([]) List<SellEventUiModel> events,
    @Default(0) int eventsTotalCount,
    @Default(1) int eventsCurrentPage,
    @Default(0) int eventsTotalPages,
    @Default(false) bool eventsHasMore,
    @Default('') String eventsKeyword,
    SellEventUiModel? selectedEvent,

    // Step 2: 일정 선택
    @Default([]) List<SellScheduleUiModel> schedules,
    DateTime? selectedDate,
    SellScheduleUiModel? selectedSchedule,

    // Step 3: 좌석 정보
    SellSeatOptionsUiModel? seatOptions,
    String? selectedLocationId,
    @Default(false) bool isCustomLocation,
    @Default('') String customLocation,
    @Default('') String area,
    @Default('') String row,

    // Step 4: 등록 정보
    @Default(1) int quantity,
    @Default(false) bool isConsecutive,
    @Default('') String price,
    @Default('') String description,
    @Default([]) List<File> images,

    // 공통
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _SellRegisterState;

  // PaginableState 구현
  @override
  int get currentPage => eventsCurrentPage;

  @override
  int get totalPages => eventsTotalPages;

  @override
  int get totalCount => eventsTotalCount;

  @override
  bool get hasMore => eventsHasMore;

  @override
  PaginableState copyWithPagination({
    int? currentPage,
    int? totalPages,
    int? totalCount,
    bool? hasMore,
    bool? isLoading,
    String? errorMessage,
  }) {
    return copyWith(
      eventsCurrentPage: currentPage ?? eventsCurrentPage,
      eventsTotalPages: totalPages ?? eventsTotalPages,
      eventsTotalCount: totalCount ?? eventsTotalCount,
      eventsHasMore: hasMore ?? eventsHasMore,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
    );
  }
}

extension SellRegisterStateX on SellRegisterState {
  /// 날짜별 스케줄 그룹화
  Map<DateTime, List<SellScheduleUiModel>> get schedulesByDate {
    final map = <DateTime, List<SellScheduleUiModel>>{};
    for (final schedule in schedules) {
      final dateOnly = DateTime(
        schedule.date.year,
        schedule.date.month,
        schedule.date.day,
      );
      map.putIfAbsent(dateOnly, () => []).add(schedule);
    }
    return map;
  }

  /// 사용 가능한 날짜 목록
  List<DateTime> get availableDates => schedulesByDate.keys.toList()..sort();

  /// 선택된 날짜의 스케줄 목록
  List<SellScheduleUiModel> get selectedDateSchedules {
    if (selectedDate == null) return [];
    final dateOnly = DateTime(
      selectedDate!.year,
      selectedDate!.month,
      selectedDate!.day,
    );
    return schedulesByDate[dateOnly] ?? [];
  }

  /// 좌석 위치 이름
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

  /// 좌석 정보 유효성
  bool get isSeatInfoValid {
    final locationValid = isCustomLocation
        ? customLocation.isNotEmpty
        : selectedLocationId != null;
    return locationValid && area.isNotEmpty && row.isNotEmpty;
  }

  /// 등록 정보 유효성
  bool get isRegisterValid => price.isNotEmpty;

  /// 좌석 정보 문자열
  String get seatInfo {
    final parts = <String>[];
    final location = selectedLocationName;
    if (location != null && location.isNotEmpty) parts.add(location);
    if (area.isNotEmpty) parts.add(area);
    if (row.isNotEmpty) parts.add(row);
    return parts.join(' ');
  }
}
