/// 페이지네이션 상태를 관리하는 인터페이스
///
/// ViewModel의 State에서 이 인터페이스를 구현하면 [PaginationMixin]을 사용할 수 있습니다.
abstract interface class PaginableState {
  int get currentPage;
  int get totalPages;
  int get totalCount;
  bool get hasMore;
  bool get isLoading;
  String? get errorMessage;

  /// copyWith을 통해 새 상태를 생성하는 메서드
  PaginableState copyWithPagination({
    int? currentPage,
    int? totalPages,
    int? totalCount,
    bool? hasMore,
    bool? isLoading,
    String? errorMessage,
  });
}

/// 페이지네이션 결과를 담는 제네릭 클래스
class PaginationResult<T> {
  final List<T> items;
  final int currentPage;
  final int totalPages;
  final int totalCount;

  const PaginationResult({
    required this.items,
    required this.currentPage,
    required this.totalPages,
    required this.totalCount,
  });

  bool get hasMore => currentPage < totalPages;
}

/// 페이지네이션 로직을 제공하는 Mixin
///
/// 사용 예시:
/// ```dart
/// class MyViewModel extends _$MyViewModel with PaginationMixin<MyState, MyItem> {
///   @override
///   Future<PaginationResult<MyItem>> fetchPage(int page, int pageSize) async {
///     final result = await usecase.call(page: page, size: pageSize);
///     return PaginationResult(
///       items: result.items,
///       currentPage: result.currentPage,
///       totalPages: result.totalPages,
///       totalCount: result.totalCount,
///     );
///   }
/// }
/// ```
mixin PaginationMixin<S extends PaginableState, T> {
  /// 현재 상태 getter (ViewModel에서 구현 필요)
  S get state;

  /// 상태 setter (ViewModel에서 구현 필요)
  set state(S newState);

  /// 기본 페이지 크기
  int get defaultPageSize => 20;

  /// 첫 페이지 로드
  ///
  /// [fetchPage]를 호출하여 첫 페이지 데이터를 가져옵니다.
  /// [onItemsLoaded]에서 가져온 아이템을 State에 적용합니다.
  Future<void> loadFirstPage({
    required Future<PaginationResult<T>> Function(int page, int pageSize)
    fetchPage,
    required void Function(List<T> items, PaginationResult<T> result)
    onItemsLoaded,
  }) async {
    state = state.copyWithPagination(isLoading: true, errorMessage: null) as S;

    try {
      final result = await fetchPage(1, defaultPageSize);

      onItemsLoaded(result.items, result);

      state =
          state.copyWithPagination(
                currentPage: result.currentPage,
                totalPages: result.totalPages,
                totalCount: result.totalCount,
                hasMore: result.hasMore,
                isLoading: false,
              )
              as S;
    } catch (e) {
      state =
          state.copyWithPagination(isLoading: false, errorMessage: e.toString())
              as S;
    }
  }

  /// 다음 페이지 로드
  ///
  /// [state.hasMore]가 true이고 로딩 중이 아닐 때만 호출됩니다.
  Future<void> loadNextPage({
    required Future<PaginationResult<T>> Function(int page, int pageSize)
    fetchPage,
    required void Function(List<T> newItems, PaginationResult<T> result)
    onItemsAppended,
  }) async {
    if (!state.hasMore || state.isLoading) return;

    final nextPage = state.currentPage + 1;

    try {
      final result = await fetchPage(nextPage, defaultPageSize);

      onItemsAppended(result.items, result);

      state =
          state.copyWithPagination(
                currentPage: result.currentPage,
                totalPages: result.totalPages,
                hasMore: result.hasMore,
              )
              as S;
    } catch (e) {
      state = state.copyWithPagination(errorMessage: e.toString()) as S;
    }
  }

  /// 새로고침 (첫 페이지 다시 로드)
  Future<void> refresh({
    required Future<PaginationResult<T>> Function(int page, int pageSize)
    fetchPage,
    required void Function(List<T> items, PaginationResult<T> result)
    onItemsLoaded,
  }) async {
    await loadFirstPage(fetchPage: fetchPage, onItemsLoaded: onItemsLoaded);
  }
}
