import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/pagination_mixin.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/providers/sell_providers_di.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/ui_models/sell_event_ui_model.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/ui_models/sell_feature_ui_model.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/ui_models/sell_schedule_ui_model.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/ui_models/sell_seat_option_ui_model.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/ui_models/sell_trade_method_ui_model.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/viewmodels/sell_register_state.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_trade_method_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_ticket_entity.dart';
import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';

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
    // _categoryId = categoryId; // Removed as per instruction

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
      final usecase = ref.read(getSellSeatOptionsUsecaseProvider);
      final entity = await usecase.call(eventId);
      final uiModel = SellSeatOptionsUiModel.fromEntity(entity);

      state = state.copyWith(
        isLoading: false,
        seatOptions: uiModel,
        selectedGradeId: null,
        selectedLocationId: null,
        selectedAreaId: null,
        originalPrice: null,
        seatDetail: '',
        seatFloor: null,
        seatRowType: null,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  /// 특이사항 목록 로드
  Future<void> loadFeatures() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final usecase = ref.read(getSellFeaturesUsecaseProvider);
      final entities = await usecase.call();
      final uiModels = entities
          .map((e) => SellFeatureUiModel.fromEntity(e))
          .toList();

      state = state.copyWith(isLoading: false, features: uiModels);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  /// 거래 방식 목록 로드
  Future<void> loadTradeMethods() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final usecase = ref.read(getSellTradeMethodsUsecaseProvider);
      final List<SellTradeMethodEntity> entities = await usecase.call();
      final uiModels = entities
          .map((e) => SellTradeMethodUiModel.fromEntity(e))
          .toList();

      state = state.copyWith(isLoading: false, tradeMethods: uiModels);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  /// 거래 방식 선택
  void setTradeMethodId(int id) {
    state = state.copyWith(selectedTradeMethodId: id);
  }

  /// 위치 선택 (구역/상세 위치)
  void selectLocation(int locationId) {
    state = state.copyWith(selectedLocationId: locationId);
  }

  /// 구역 선택
  void selectArea(int areaId) {
    state = state.copyWith(selectedAreaId: areaId);
  }

  /// 정가 조회
  Future<void> loadOriginalPrice() async {
    // 필수 조건 체크: 등급 선택 여부
    if (state.selectedEvent == null || state.selectedGradeId == null) return;

    try {
      final usecase = ref.read(getSellOriginalPriceUsecaseProvider);
      final price = await usecase.call(
        eventId: state.selectedEvent!.eventId,
        gradeId: state.selectedGradeId!,
        locationId: state.selectedLocationId,
        areaId: state.selectedAreaId,
      );

      final updatedPrice = _calculateAutoPrice(price, state.quantity);
      state = state.copyWith(originalPrice: price, price: updatedPrice);
    } catch (e) {
      // 정가 조회 실패 시 특별한 에러 처리는 하지 않음 (null 상태 유지)
      state = state.copyWith(originalPrice: null);
    }
  }

  /// 좌석 등급 선택 (ID)
  void selectSeatGrade(int gradeId) {
    state = state.copyWith(selectedGradeId: gradeId);
  }

  /// 좌석 상세 위치 업데이트 (열/번호)
  void updateSeatDetail(String value) {
    state = state.copyWith(seatDetail: value);
  }

  /// 좌석 층 선택
  void selectSeatFloor(String floor) {
    state = state.copyWith(seatFloor: floor);
  }

  /// 열/입장 정보 타입 선택
  void selectSeatRowType(String type) {
    state = state.copyWith(seatRowType: type);
  }

  /// 특이사항 ID 토글
  void toggleFeature(int featureId) {
    final currentIds = [...state.selectedFeatureIds];
    if (currentIds.contains(featureId)) {
      currentIds.remove(featureId);
    } else {
      currentIds.add(featureId);
    }
    state = state.copyWith(selectedFeatureIds: currentIds);
  }

  /// 거래 방식 선택
  void updateTradeMethod(int methodId) {
    state = state.copyWith(selectedTradeMethodId: methodId);
  }

  /// 티켓 보유 여부 업데이트
  void updateHasTicket(bool value) {
    state = state.copyWith(hasTicket: value);
  }

  // ========== Step 4: 등록 ==========

  /// 수량 업데이트
  void updateQuantity(int count) {
    final updatedPrice = _calculateAutoPrice(state.originalPrice, count);
    state = state.copyWith(quantity: count, price: updatedPrice);
  }

  /// 수량 증가
  void incrementQuantity() {
    final newQuantity = state.quantity + 1;
    final updatedPrice = _calculateAutoPrice(state.originalPrice, newQuantity);
    state = state.copyWith(quantity: newQuantity, price: updatedPrice);
  }

  /// 수량 감소
  void decrementQuantity() {
    if (state.quantity > 1) {
      final newQuantity = state.quantity - 1;
      final updatedPrice = _calculateAutoPrice(
        state.originalPrice,
        newQuantity,
      );
      state = state.copyWith(quantity: newQuantity, price: updatedPrice);
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
    // 필수 필드 검증
    if (state.selectedEvent == null || state.selectedSchedule == null) {
      state = state.copyWith(errorMessage: '공연 및 일정을 선택해주세요.');
      return null;
    }

    if (state.selectedGradeId == null) {
      state = state.copyWith(errorMessage: '좌석 등급을 선택해주세요.');
      return null;
    }

    if (!state.isSeatInfoValid) {
      state = state.copyWith(errorMessage: '좌석 정보를 모두 입력해주세요.');
      return null;
    }

    final priceValue = int.tryParse(state.price.replaceAll(',', ''));
    if (priceValue == null || priceValue <= 0) {
      state = state.copyWith(errorMessage: '올바른 가격을 입력해주세요.');
      return null;
    }

    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      final usecase = ref.read(registerSellTicketUsecaseProvider);
      final result = await usecase.call(
        eventId: state.selectedEvent!.eventId,
        scheduleId: state.selectedSchedule!.scheduleId,
        seatGradeId: state.selectedGradeId!,
        locationId: state.selectedLocationId,
        areaId: state.selectedAreaId,
        row: state.seatDetail,
        quantity: state.quantity,
        isConsecutive: state.quantity > 1 ? state.isConsecutive : false,
        price: priceValue,
        originalPrice:
            state.originalPrice ??
            priceValue, // 정가 정보가 없으면 판매가와 동일하진 않겠지만 일단 fallback
        tradeMethodId: state.selectedTradeMethodId!,
        hasTicket: state.hasTicket,
        description: state.description.isNotEmpty ? state.description : null,
        images: state.images,
        featureIds: state.selectedFeatureIds,
      );

      state = state.copyWith(isLoading: false);
      return result;
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: '티켓 등록에 실패했습니다. 잠시 후 다시 시도해주세요.',
      );
      return null;
    }
  }

  // ========== 초기화 ==========

  // ========== Private Helpers ==========

  String _calculateAutoPrice(int? unitPrice, int quantity) {
    if (unitPrice == null) return state.price;
    return NumberFormatUtil.formatNumber(unitPrice * quantity);
  }

  /// 플로우 완료 후 초기화
  void reset() {
    _categoryId = 0;
    state = const SellRegisterState();
  }
}
