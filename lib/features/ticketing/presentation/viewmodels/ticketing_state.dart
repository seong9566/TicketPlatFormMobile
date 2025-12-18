import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_ui_model.dart';

part 'ticketing_state.freezed.dart';

@freezed
abstract class TicketingState with _$TicketingState {
  const factory TicketingState({
    TicketingUiModel? ticketingInfo,
    TicketGradeInfo? selectedGrade,
    @Default('가격 낮은순') String sortBy,
    @Default(false) bool isLoading,
  }) = _TicketingState;
}
