import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/dispute/presentation/ui_models/dispute_ui_model.dart';

part 'dispute_list_state.freezed.dart';

@freezed
abstract class DisputeListState with _$DisputeListState {
  const factory DisputeListState({
    @Default([]) List<DisputeListItemUiModel> items,
    String? nextCursor,
    @Default(false) bool hasMore,
    @Default(false) bool isLoadingMore,
  }) = _DisputeListState;
}
