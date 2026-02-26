import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/withdrawal/presentation/providers/withdrawal_providers_di.dart';
import 'package:ticket_platform_mobile/features/withdrawal/presentation/viewmodels/withdrawal_history_state.dart';

part 'withdrawal_history_viewmodel.g.dart';

@riverpod
class WithdrawalHistoryViewModel extends _$WithdrawalHistoryViewModel {
  @override
  Future<WithdrawalHistoryState> build() async {
    return _fetch(page: 1, pageSize: 20);
  }

  Future<WithdrawalHistoryState> _fetch({
    required int page,
    required int pageSize,
  }) async {
    final response = await ref
        .read(getWithdrawalHistoryUsecaseProvider)
        .call(page: page, pageSize: pageSize);

    final current = state.value;
    if (page == 1 || current == null) {
      return WithdrawalHistoryState(
        items: response.items,
        totalCount: response.totalCount,
        page: response.page,
        pageSize: response.pageSize,
      );
    }

    return current.copyWith(
      items: [...current.items, ...response.items],
      totalCount: response.totalCount,
      page: response.page,
      pageSize: response.pageSize,
      isLoadingMore: false,
    );
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetch(page: 1, pageSize: 20));
  }

  Future<void> loadMore() async {
    final current = state.value;
    if (current == null || current.isLoadingMore) {
      return;
    }

    if (current.items.length >= current.totalCount) {
      return;
    }

    state = AsyncValue.data(current.copyWith(isLoadingMore: true));
    try {
      final nextPage = current.page + 1;
      final nextState = await _fetch(
        page: nextPage,
        pageSize: current.pageSize,
      );
      state = AsyncValue.data(nextState);
    } catch (e, stack) {
      AppLogger.e('출금 내역 추가 조회 실패', e, stack);
      state = AsyncValue.data(current.copyWith(isLoadingMore: false));
    }
  }

  Future<void> cancelWithdrawal(int withdrawalId) async {
    final current = state.value;
    if (current == null) {
      return;
    }

    try {
      final updated = await ref
          .read(cancelWithdrawalUsecaseProvider)
          .call(withdrawalId);

      final updatedItems = current.items.map((item) {
        if (item.id == withdrawalId) {
          return updated;
        }
        return item;
      }).toList();

      state = AsyncValue.data(current.copyWith(items: updatedItems));
    } catch (e, stack) {
      AppLogger.e('출금 취소 실패', e, stack);
      rethrow;
    }
  }
}
