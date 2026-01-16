import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/pagination_mixin.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/providers/sell_providers_di.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/ui_models/sell_event_ui_model.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/ui_models/sell_schedule_ui_model.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/ui_models/sell_seat_option_ui_model.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/viewmodels/sell_register_state.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_ticket_entity.dart';

part 'sell_register_viewmodel.g.dart';

@Riverpod(keepAlive: true)
class SellRegisterViewModel extends _$SellRegisterViewModel
    with PaginationMixin<SellRegisterState, SellEventUiModel> {
  /// 캐시된 categoryId (loadMore 시 사용)
  int _categoryId = 0;

  @override
  SellRegisterState build() => const SellRegisterState();

  // ========== Step 1: 공연 선택 ==========

  /// 공연 목록 로드 (PaginationMixin 활용)
  Future<void> loadEvents(int categoryId) async {
    _categoryId = categoryId;

    await loadFirstPage(
      fetchPage: (page, pageSize) =>
          _fetchEventsPage(categoryId, page, pageSize),
      onItemsLoaded: (items, result) {
        state = state.copyWith(
          events: items,
          eventsTotalCount: result.totalCount,
          eventsCurrentPage: result.currentPage,
          eventsHasMore: result.hasMore,
        );
      },
    );
  }

  /// 공연 검색
  Future<void> searchEvents(int categoryId, String keyword) async {
    state = state.copyWith(eventsKeyword: keyword);
    await loadEvents(categoryId);
  }

  /// 공연 목록 더보기 (PaginationMixin 활용)
  Future<void> loadMoreEvents([int? categoryId]) async {
    final catId = categoryId ?? _categoryId;

    await loadNextPage(
      fetchPage: (page, pageSize) => _fetchEventsPage(catId, page, pageSize),
      onItemsAppended: (newItems, result) {
        state = state.copyWith(
          events: [...state.events, ...newItems],
          eventsCurrentPage: result.currentPage,
          eventsHasMore: result.hasMore,
        );
      },
    );
  }

  /// 공연 페이지 API 호출 (private)
  Future<PaginationResult<SellEventUiModel>> _fetchEventsPage(
    int categoryId,
    int page,
    int pageSize,
  ) async {
    final usecase = ref.read(getSellEventsUsecaseProvider);
    final result = await usecase.call(
      categoryId: categoryId,
      keyword: state.eventsKeyword.isEmpty ? null : state.eventsKeyword,
      page: page,
      size: pageSize,
    );

    final uiModels = result.events
        .map((e) => SellEventUiModel.fromEntity(e))
        .toList();

    return PaginationResult(
      items: uiModels,
      currentPage: result.currentPage,
      totalPages: result.totalPages,
      totalCount: result.totalCount,
    );
  }

  /// 공연 선택
  void selectEvent(SellEventUiModel event) {
    state = state.copyWith(selectedEvent: event);
  }

  // ========== Step 2: 일정 선택 ==========

  /// 일정 목록 로드
  Future<void> loadSchedules(int eventId) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final usecase = ref.read(getSellSchedulesUsecaseProvider);
      final entities = await usecase.call(eventId);

      final uiModels = entities
          .map((e) => SellScheduleUiModel.fromEntity(e))
          .toList();

      state = state.copyWith(
        isLoading: false,
        schedules: uiModels,
        selectedDate: null,
        selectedSchedule: null,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  /// 날짜 선택
  void selectDate(DateTime? date) {
    state = state.copyWith(selectedDate: date, selectedSchedule: null);
  }

  /// 스케줄 선택
  void selectSchedule(SellScheduleUiModel? schedule) {
    state = state.copyWith(selectedSchedule: schedule);
  }

  // ========== Step 3: 좌석 정보 ==========

  /// 좌석 옵션 로드
  Future<void> loadSeatOptions(int eventId) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      // Mock Data for Zone Selection as per request
      // "구역선택 데이터는 1층 2층이 아닌, 1구역,2구역 이렇게 되어있어"
      final mockLocations = <SellSeatLocationUiModel>[];

      // F1 ~ F5
      for (var i = 1; i <= 5; i++) {
        mockLocations.add(
          SellSeatLocationUiModel(locationId: 'F$i', locationName: 'F$i'),
        );
      }

      // 1구역 ~ 10구역
      for (var i = 1; i <= 10; i++) {
        mockLocations.add(
          SellSeatLocationUiModel(locationId: '$i', locationName: '${i}구역'),
        );
      }

      final uiModel = SellSeatOptionsUiModel(
        locations: mockLocations,
        allowCustomLocation: true,
      );

      // API call commented out for mock data
      // final usecase = ref.read(getSellSeatOptionsUsecaseProvider);
      // final entity = await usecase.call(eventId);
      // final uiModel = SellSeatOptionsUiModel.fromEntity(entity);

      await Future.delayed(const Duration(milliseconds: 300));

      state = state.copyWith(
        isLoading: false,
        seatOptions: uiModel,
        selectedLocationId: null,
        isCustomLocation: false,
        customLocation: '',
        seatDetail: '',
        seatGrade: null,
        seatFloor: null,
        seatRowType: null,
        noteTags: [],
        dealMethod: null,
        isHolding: true,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  /// 위치 선택 (구역)
  void selectLocation(String locationId) {
    final isCustom = locationId == 'custom';
    state = state.copyWith(
      selectedLocationId: isCustom ? null : locationId,
      isCustomLocation: isCustom,
      customLocation: isCustom ? state.customLocation : '',
    );
  }

  /// 직접 입력 위치 업데이트
  void updateCustomLocation(String value) {
    state = state.copyWith(customLocation: value);
  }

  /// 좌석 상세 위치 업데이트 (열/번호)
  void updateSeatDetail(String value) {
    state = state.copyWith(seatDetail: value);
  }

  /// 좌석 등급 선택
  void selectSeatGrade(String grade) {
    state = state.copyWith(seatGrade: grade);
  }

  /// 좌석 층 선택
  void selectSeatFloor(String floor) {
    state = state.copyWith(seatFloor: floor);
  }

  /// 열/입장 정보 타입 선택
  void selectSeatRowType(String type) {
    state = state.copyWith(seatRowType: type);
  }

  /// 특이사항 태그 토글 (기존 seatFeature 대체)
  void toggleNoteTag(String tag) {
    final currentTags = [...state.noteTags];
    if (currentTags.contains(tag)) {
      currentTags.remove(tag);
    } else {
      currentTags.add(tag);
    }
    state = state.copyWith(noteTags: currentTags);
  }

  /// 거래 방식 선택
  void updateDealMethod(String method) {
    state = state.copyWith(dealMethod: method);
  }

  /// 티켓 보유 여부 업데이트
  void updateIsHolding(bool value) {
    state = state.copyWith(isHolding: value);
  }

  // ========== Step 4: 등록 ==========

  /// 수량 업데이트
  void updateQuantity(int count) {
    state = state.copyWith(quantity: count);
  }

  /// 수량 증가
  void incrementQuantity() {
    state = state.copyWith(quantity: state.quantity + 1);
  }

  /// 수량 감소
  void decrementQuantity() {
    if (state.quantity > 1) {
      state = state.copyWith(quantity: state.quantity - 1);
    }
  }

  /// 연석 여부 업데이트
  void updateIsConsecutive(bool value) {
    state = state.copyWith(isConsecutive: value);
  }

  /// 가격 업데이트
  void updatePrice(String value) {
    state = state.copyWith(price: value);
  }

  /// 설명 업데이트
  void updateDescription(String value) {
    state = state.copyWith(description: value);
  }

  /// 이미지 추가
  void addImage(File image) {
    if (state.images.length >= 5) return;
    state = state.copyWith(images: [...state.images, image]);
  }

  /// 이미지 삭제
  void removeImage(int index) {
    final newList = [...state.images];
    newList.removeAt(index);
    state = state.copyWith(images: newList);
  }

  /// 티켓 등록
  Future<SellTicketRegisterResult?> registerTicket() async {
    if (state.selectedEvent == null || state.selectedSchedule == null) {
      state = state.copyWith(errorMessage: '공연 및 일정을 선택해주세요.');
      return null;
    }

    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      final usecase = ref.read(registerSellTicketUsecaseProvider);
      final result = await usecase.call(
        eventId: state.selectedEvent!.eventId,
        scheduleId: state.selectedSchedule!.scheduleId,
        locationId: state.selectedLocationId,
        area: null, // Removed
        row: null, // Removed
        seatInfo: state.seatInfo,
        isConsecutive: state.quantity > 1 ? state.isConsecutive : false,
        quantity: state.quantity,
        price: int.parse(state.price.replaceAll(',', '')),
        originalPrice: int.parse(state.price.replaceAll(',', '')),
        description: state.description.isNotEmpty ? state.description : null,
        images: state.images,
      );

      state = state.copyWith(isLoading: false);
      return result;
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
      return null;
    }
  }

  // ========== 초기화 ==========

  /// 플로우 완료 후 초기화
  void reset() {
    _categoryId = 0;
    state = const SellRegisterState();
  }
}
