import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_detail_ui_model.dart';

part 'ticket_detail_state.freezed.dart';

@freezed
abstract class TicketDetailState with _$TicketDetailState {
  const factory TicketDetailState({TicketingDetailUiModel? detail}) =
      _TicketDetailState;
}
