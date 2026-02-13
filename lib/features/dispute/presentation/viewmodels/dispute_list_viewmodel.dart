import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/dispute/presentation/providers/dispute_providers_di.dart';
import 'package:ticket_platform_mobile/features/dispute/presentation/ui_models/dispute_ui_model.dart';
import 'package:ticket_platform_mobile/features/dispute/presentation/viewmodels/dispute_list_state.dart';

part 'dispute_list_viewmodel.g.dart';

@riverpod
class DisputeListViewModel extends _$DisputeListViewModel {
  @override
  Future<DisputeListState> build() async {
    return _fetch();
  }

  Future<DisputeListState> _fetch({String? cursor}) async {
    final data = await ref
        .read(getDisputesUsecaseProvider)
        .call(cursor: cursor);
    final items = data.items.map(DisputeListItemUiModel.fromEntity).toList();

    if (cursor == null) {
      return DisputeListState(
        items: items,
        nextCursor: data.nextCursor,
        hasMore: data.hasMore,
      );
    }

    final current = state.value;
    if (current == null) {
      return DisputeListState(
        items: items,
        nextCursor: data.nextCursor,
        hasMore: data.hasMore,
      );
    }

    return current.copyWith(
      items: [...current.items, ...items],
      nextCursor: data.nextCursor,
      hasMore: data.hasMore,
      isLoadingMore: false,
    );
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetch());
  }

  Future<void> loadMore() async {
    final current = state.value;
    if (current == null || !current.hasMore || current.isLoadingMore) {
      return;
    }

    state = AsyncValue.data(current.copyWith(isLoadingMore: true));
    state = await AsyncValue.guard(() => _fetch(cursor: current.nextCursor));
  }
}
