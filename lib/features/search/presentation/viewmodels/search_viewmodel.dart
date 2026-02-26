import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/search/data/dto/response/search_res_dto.dart';
import 'package:ticket_platform_mobile/features/search/presentation/providers/search_providers_di.dart';

part 'search_viewmodel.freezed.dart';
part 'search_viewmodel.g.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    @Default('') String keyword,
    @Default(false) bool isLoading,
    SearchResDto? result,
    String? errorMessage,
  }) = _SearchState;
}

@riverpod
class SearchViewModel extends _$SearchViewModel {
  @override
  SearchState build() => const SearchState();

  Future<void> search(String keyword) async {
    final trimmed = keyword.trim();
    if (trimmed.isEmpty) return;

    state = state.copyWith(
      keyword: trimmed,
      isLoading: true,
      errorMessage: null,
    );

    try {
      final result = await ref.read(searchUseCaseProvider).call(trimmed);
      if (!ref.mounted) return;
      state = state.copyWith(isLoading: false, result: result);
    } catch (e, stack) {
      AppLogger.e('검색 실패', e, stack);
      if (!ref.mounted) return;
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  void clearSearch() {
    state = const SearchState();
  }
}
