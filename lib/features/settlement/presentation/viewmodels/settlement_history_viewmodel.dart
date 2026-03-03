import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/settlement/domain/entities/settlement_entity.dart';
import 'package:ticket_platform_mobile/features/settlement/presentation/providers/settlement_providers_di.dart';

part 'settlement_history_viewmodel.freezed.dart';
part 'settlement_history_viewmodel.g.dart';

@freezed
abstract class SettlementHistoryState with _$SettlementHistoryState {
  const factory SettlementHistoryState({
    @Default([]) List<SettlementEntity> settlements,
    @Default(0) int totalCount,
    @Default(0) int totalNetAmount,
    @Default(1) int page,
    @Default(20) int pageSize,
    @Default(false) bool isLoadingMore,
    String? selectedStatus,
  }) = _SettlementHistoryState;
}

@riverpod
class SettlementHistoryViewModel extends _$SettlementHistoryViewModel {
  @override
  Future<SettlementHistoryState> build() async {
    return _fetch(page: 1, selectedStatus: null);
  }

  Future<SettlementHistoryState> _fetch({
    required int page,
    required String? selectedStatus,
  }) async {
    final current = state.value;
    final result = await ref
        .read(settlementRepositoryProvider)
        .getSettlements(page: page, size: 20, status: selectedStatus);

    if (page == 1 || current == null) {
      return SettlementHistoryState(
        settlements: result.settlements,
        totalCount: result.totalCount,
        totalNetAmount: result.totalNetAmount,
        page: page,
        pageSize: 20,
        selectedStatus: selectedStatus,
      );
    }

    return current.copyWith(
      settlements: [...current.settlements, ...result.settlements],
      totalCount: result.totalCount,
      totalNetAmount: result.totalNetAmount,
      page: page,
      isLoadingMore: false,
    );
  }

  Future<void> loadMore() async {
    final current = state.value;
    if (current == null || current.isLoadingMore) return;
    if (current.settlements.length >= current.totalCount) return;

    state = AsyncValue.data(current.copyWith(isLoadingMore: true));
    try {
      final nextState = await _fetch(
        page: current.page + 1,
        selectedStatus: current.selectedStatus,
      );
      state = AsyncValue.data(nextState);
    } catch (e, stack) {
      AppLogger.e('정산 내역 추가 조회 실패', e, stack);
      state = AsyncValue.data(current.copyWith(isLoadingMore: false));
    }
  }

  Future<void> filterByStatus(String? status) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () => _fetch(page: 1, selectedStatus: status),
    );
  }

  Future<void> refresh() async {
    final currentStatus = state.value?.selectedStatus;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () => _fetch(page: 1, selectedStatus: currentStatus),
    );
  }
}
