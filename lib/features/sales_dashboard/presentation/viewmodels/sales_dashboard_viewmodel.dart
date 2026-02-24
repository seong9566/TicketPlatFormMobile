import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/presentation/providers/sales_dashboard_providers_di.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/presentation/ui_models/event_group_ui_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_dashboard_viewmodel.freezed.dart';
part 'sales_dashboard_viewmodel.g.dart';

@freezed
abstract class SalesDashboardState with _$SalesDashboardState {
  const factory SalesDashboardState({
    @Default([]) List<EventGroupUiModel> items,
    @Default(1) int currentPage,
    @Default(false) bool hasMore,
    @Default(false) bool isLoadingMore,
    String? selectedStatus,
    int? totalCount,
  }) = _SalesDashboardState;
}

@riverpod
class SalesDashboardViewModel extends _$SalesDashboardViewModel {
  @override
  Future<SalesDashboardState> build() async {
    return _fetchDashboard(page: 1);
  }

  Future<SalesDashboardState> _fetchDashboard({
    required int page,
    String? status,
  }) async {
    final currentState = state.value;
    final usecase = ref.read(getSalesDashboardUsecaseProvider);
    final effectiveStatus = status ?? currentState?.selectedStatus;

    final result = await usecase.call(
      status: effectiveStatus,
      page: page,
      size: 20,
    );

    final newItems = result.eventGroups
        .map((e) => EventGroupUiModel.fromEntity(e))
        .toList();

    if (page == 1) {
      return SalesDashboardState(
        items: newItems,
        currentPage: result.page,
        hasMore: result.hasMore,
        totalCount: result.totalCount,
        selectedStatus: effectiveStatus,
      );
    } else {
      return currentState!.copyWith(
        items: [...currentState.items, ...newItems],
        currentPage: result.page,
        hasMore: result.hasMore,
        totalCount: result.totalCount,
        isLoadingMore: false,
      );
    }
  }

  Future<void> loadMore() async {
    final currentState = state.value;
    if (currentState == null ||
        !currentState.hasMore ||
        currentState.isLoadingMore) {
      return;
    }

    state = AsyncValue.data(currentState.copyWith(isLoadingMore: true));

    try {
      final newState = await _fetchDashboard(
        page: currentState.currentPage + 1,
      );
      state = AsyncValue.data(newState);
    } catch (e, stack) {
      AppLogger.e('추가 데이터 로드 실패', e, stack);
      state = AsyncValue.data(currentState.copyWith(isLoadingMore: false));
    }
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchDashboard(page: 1));
  }

  Future<void> applyStatusFilter(String? status) async {
    final currentState = state.value;
    if (currentState != null) {
      state = AsyncValue.data(currentState.copyWith(selectedStatus: status));
    }

    try {
      final newState = await _fetchDashboard(page: 1, status: status);
      state = AsyncValue.data(newState);
    } catch (e, stack) {
      AppLogger.e('필터 적용 실패', e, stack);
      state = AsyncValue.error(e, stack);
    }
  }
}
