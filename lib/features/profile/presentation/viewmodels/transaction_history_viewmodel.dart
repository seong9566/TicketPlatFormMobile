import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/profile/domain/entities/transaction_list_entity.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/providers/profile_providers_di.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/ui_models/transaction_history_ui_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_history_viewmodel.freezed.dart';
part 'transaction_history_viewmodel.g.dart';

enum TransactionType { sales, purchases }

@freezed
abstract class TransactionHistoryState with _$TransactionHistoryState {
  const factory TransactionHistoryState({
    @Default([]) List<TransactionHistoryUiModel> items,
    String? nextCursor,
    @Default(false) bool hasMore,
    @Default(false) bool isLoadingMore,
    String? selectedStatus,
    @Default('all') String selectedPeriod,
    @Default('latest') String selectedSort,
    int? totalCount,
    int? cachedTotalCount,
  }) = _TransactionHistoryState;
}

@riverpod
class TransactionHistoryViewModel extends _$TransactionHistoryViewModel {
  late final TransactionType _type;

  @override
  Future<TransactionHistoryState> build(TransactionType type) async {
    _type = type;
    return _fetchTransactions();
  }

  Future<TransactionHistoryState> _fetchTransactions({
    String? cursor,
    int limit = 20,
    String? status,
    String? period,
    String? sortBy,
  }) async {
    final currentState = state.value;
    final useCaseResult = await _executeUseCase(
      cursor: cursor,
      limit: limit,
      status: status ?? currentState?.selectedStatus,
      period: period ?? currentState?.selectedPeriod ?? 'all',
      sortBy: sortBy ?? currentState?.selectedSort ?? 'latest',
    );

    final newItems = useCaseResult.items
        .map((e) => TransactionHistoryUiModel.fromEntity(e))
        .toList();

    if (cursor == null) {
      // 초기 로드
      return TransactionHistoryState(
        items: newItems,
        nextCursor: useCaseResult.nextCursor,
        hasMore: useCaseResult.hasMore,
        totalCount: useCaseResult.totalCount,
        cachedTotalCount: useCaseResult.totalCount,
        selectedStatus: status ?? currentState?.selectedStatus,
        selectedPeriod: period ?? currentState?.selectedPeriod ?? 'all',
        selectedSort: sortBy ?? currentState?.selectedSort ?? 'latest',
      );
    } else {
      // 더 보기 (두 번째 페이지 이후)
      // totalCount가 null이면 캐싱된 값 유지
      return currentState!.copyWith(
        items: [...currentState.items, ...newItems],
        nextCursor: useCaseResult.nextCursor,
        hasMore: useCaseResult.hasMore,
        totalCount: useCaseResult.totalCount,
        cachedTotalCount:
            useCaseResult.totalCount ?? currentState.cachedTotalCount,
        isLoadingMore: false,
      );
    }
  }

  Future<TransactionListEntity> _executeUseCase({
    String? cursor,
    int? limit,
    String? status,
    String? period,
    String? sortBy,
  }) async {
    if (_type == TransactionType.sales) {
      final usecase = ref.read(getSalesHistoryUsecaseProvider);
      return usecase.call(
        cursor: cursor,
        limit: limit,
        status: status,
        period: period,
        sortBy: sortBy,
      );
    } else {
      final usecase = ref.read(getPurchasesHistoryUsecaseProvider);
      return usecase.call(
        cursor: cursor,
        limit: limit,
        status: status,
        period: period,
        sortBy: sortBy,
      );
    }
  }

  Future<void> loadMore() async {
    final currentState = state.value;
    if (currentState == null ||
        !currentState.hasMore ||
        currentState.isLoadingMore ||
        currentState.nextCursor == null) {
      return;
    }

    state = AsyncValue.data(currentState.copyWith(isLoadingMore: true));

    try {
      final newState = await _fetchTransactions(
        cursor: currentState.nextCursor,
      );
      state = AsyncValue.data(newState);
    } catch (e, stack) {
      AppLogger.e('추가 데이터 로드 실패', e, stack);
      // 에러 발생 시 로딩 상태만 해제
      state = AsyncValue.data(currentState.copyWith(isLoadingMore: false));
    }
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchTransactions());
  }

  Future<void> applyFilter({
    String? status,
    String? period,
    String? sortBy,
  }) async {
    // 낙관적 업데이트: 즉시 필터 상태 반영 (로딩 없음)
    final currentState = state.value;
    if (currentState != null) {
      state = AsyncValue.data(
        currentState.copyWith(
          selectedStatus: status ?? currentState.selectedStatus,
          selectedPeriod: period ?? currentState.selectedPeriod,
          selectedSort: sortBy ?? currentState.selectedSort,
        ),
      );
    }

    // 백그라운드에서 실제 데이터 fetch
    try {
      final newState = await _fetchTransactions(
        status: status,
        period: period,
        sortBy: sortBy,
      );
      state = AsyncValue.data(newState);
    } catch (e, stack) {
      AppLogger.e('필터 적용 실패', e, stack);
      // 실패 시 에러 상태로 전환 (롤백)
      state = AsyncValue.error(e, stack);
    }
  }
}
