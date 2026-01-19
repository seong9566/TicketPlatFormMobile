import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/pagination_mixin.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/ui_models/sell_event_ui_model.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/ui_models/sell_feature_ui_model.dart';
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
    int? selectedGradeId,
    int? selectedLocationId,
    int? selectedAreaId,
    @Default('') String seatDetail, // 열/입장번호 상세 정보
    String? seatFloor, // 좌석 위치 (층) - UI용
    String? seatRowType, // 'row' or 'entrance'
    // Step 4: 등록 정보 (Price)
    @Default(1) int quantity,
    @Default(false) bool isConsecutive,
    int? originalPrice,
    @Default('') String price,

    // Step 6: 추가 정보
    @Default([]) List<SellFeatureUiModel> features, // 특이사항 목록 (Full List)
    @Default([]) List<int> selectedFeatureIds, // 선택된 특이사항 ID
    int? selectedTradeMethodId, // 거래 방식 ID
    @Default(true) bool hasTicket, // 티켓 보유 여부
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

  /// 좌석 등급 이름
  String? get selectedGradeName {
    if (selectedGradeId == null || seatOptions == null) return null;
    try {
      return seatOptions!.grades
          .firstWhere((g) => g.gradeId == selectedGradeId)
          .gradeName;
    } catch (_) {
      return null;
    }
  }

  String? get selectedLocationName {
    if (selectedLocationId == null || seatOptions == null) return null;
    try {
      return seatOptions!.locations
          .firstWhere((l) => l.locationId == selectedLocationId)
          .locationName;
    } catch (_) {
      return null;
    }
  }

  /// 좌석 구역 이름
  String? get selectedAreaName {
    if (selectedAreaId == null || seatOptions == null) return null;
    try {
      return seatOptions!.areas
          .firstWhere((a) => a.areaId == selectedAreaId)
          .areaName;
    } catch (_) {
      return null;
    }
  }

  /// 직접 입력 포함한 위치 목록
  List<SellSeatLocationUiModel> get allLocations {
    if (seatOptions == null) return [];
    return List.from(seatOptions!.locations);
  }

  /// 좌석 정보 유효성
  bool get isSeatInfoValid {
    // 필수: 등급, 수량, 좌석 상세 정보
    return selectedGradeId != null &&
        selectedLocationId != null &&
        seatRowType != null &&
        seatDetail.isNotEmpty;
  }

  /// 등록 정보 유효성
  bool get isRegisterValid => price.isNotEmpty;

  /// 좌석 정보 문자열 (UI 표시용)
  String get seatInfo {
    final parts = <String>[];

    // 1. 등급 (예: VIP석)
    final grade = selectedGradeName;
    if (grade != null) parts.add(grade);

    // 2. 층/구역 (예: 1층)
    if (seatFloor != null) parts.add(seatFloor!);

    // 3. 구역 (예: A구역)
    final area = selectedAreaName;
    if (area != null) parts.add(area);

    // 4. 상세 위치 (예: 104동)
    final location = selectedLocationName;
    if (location != null && location.isNotEmpty) parts.add(location);

    // 5. 열/상세 (예: 3열 또는 입장 번호 12)
    if (seatDetail.isNotEmpty) {
      final type = seatRowType == 'row'
          ? '열'
          : (seatRowType == 'entrance' ? ' (입장 번호)' : '');
      parts.add('$seatDetail$type');
    }

    return parts.join(' ');
  }
}
