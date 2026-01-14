import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/ui_models/sell_event_ui_model.dart';

part 'sell_event_selection_state.freezed.dart';

@freezed
abstract class SellEventSelectionState with _$SellEventSelectionState {
  const factory SellEventSelectionState({
    @Default([]) List<SellEventUiModel> events,
    @Default(0) int totalCount,
    @Default(1) int currentPage,
    @Default(false) bool hasMore,
    @Default(null) int? selectedEventId,
    @Default('') String keyword,
  }) = _SellEventSelectionState;
}
