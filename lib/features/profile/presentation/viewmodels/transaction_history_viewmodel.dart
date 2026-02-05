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
    @Default(0) int totalCount,
    @Default(false) bool isLoadingMore,
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
  }) async {
    final useCaseResult = await _executeUseCase(cursor: cursor, limit: limit);

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
      );
    } else {
      // 더 보기
      return state.value!.copyWith(
        items: [...state.value!.items, ...newItems],
        nextCursor: useCaseResult.nextCursor,
        hasMore: useCaseResult.hasMore,
        totalCount: useCaseResult.totalCount,
        isLoadingMore: false,
      );
    }
  }

  Future<TransactionListEntity> _executeUseCase({
    String? cursor,
    int? limit,
  }) async {
    if (_type == TransactionType.sales) {
      final usecase = ref.read(getSalesHistoryUsecaseProvider);
      return usecase.call(cursor: cursor, limit: limit);
    } else {
      final usecase = ref.read(getPurchasesHistoryUsecaseProvider);
      return usecase.call(cursor: cursor, limit: limit);
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
}
