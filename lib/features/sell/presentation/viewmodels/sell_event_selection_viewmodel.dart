import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/providers/sell_providers_di.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/ui_models/sell_event_ui_model.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/viewmodels/sell_event_selection_state.dart';

part 'sell_event_selection_viewmodel.g.dart';

@riverpod
class SellEventSelectionViewModel extends _$SellEventSelectionViewModel {
  // categoryId는 Riverpod의 인자로 전달받음
  late int _categoryId;

  @override
  Future<SellEventSelectionState> build(int categoryId) async {
    _categoryId = categoryId;
    return _loadEvents(page: 1, keyword: '');
  }

  Future<SellEventSelectionState> _loadEvents({
    required int page,
    required String keyword,
  }) async {
    final usecase = ref.read(getSellEventsUsecaseProvider);
    final result = await usecase.call(
      categoryId: _categoryId,
      keyword: keyword.isEmpty ? null : keyword,
      page: page,
      size: 20,
    );

    // Entity -> UiModel 변환
    final uiModels = result.events
        .map((e) => SellEventUiModel.fromEntity(e))
        .toList();

    return SellEventSelectionState(
      events: uiModels,
      totalCount: result.totalCount,
      currentPage: result.currentPage,
      hasMore: result.currentPage < result.totalPages,
      keyword: keyword,
    );
  }

  void selectEvent(int? eventId) {
    state.whenData((data) {
      state = AsyncValue.data(data.copyWith(selectedEventId: eventId));
    });
  }

  // 키워드로 검색
  Future<void> search(String keyword) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () => _loadEvents(page: 1, keyword: keyword),
    );
  }

  Future<void> loadMore() async {
    final currentState = state.value;
    if (currentState == null || !currentState.hasMore) return;

    final nextPage = currentState.currentPage + 1;

    final result = await AsyncValue.guard(() async {
      final usecase = ref.read(getSellEventsUsecaseProvider);
      final pageResult = await usecase.call(
        categoryId: _categoryId,
        keyword: currentState.keyword.isEmpty ? null : currentState.keyword,
        page: nextPage,
        size: 20,
      );

      final uiModels = pageResult.events
          .map((e) => SellEventUiModel.fromEntity(e))
          .toList();

      return currentState.copyWith(
        events: [...currentState.events, ...uiModels],
        currentPage: pageResult.currentPage,
        hasMore: pageResult.currentPage < pageResult.totalPages,
      );
    });

    if (result.hasValue) {
      state = result;
    }
  }

  SellEventUiModel? getSelectedEvent() {
    final currentState = state.value;
    if (currentState == null || currentState.selectedEventId == null) {
      return null;
    }

    try {
      return currentState.events.firstWhere(
        (e) => e.eventId == currentState.selectedEventId,
      );
    } catch (_) {
      return null;
    }
  }
}
