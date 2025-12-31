import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/usecases/get_ticket_detail_usecase.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/providers/ticketing_providers_di.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_ui_model.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticket_detail/viewmodels/ticket_detail_state.dart';

part 'ticket_detail_viewmodel.g.dart';

@riverpod
class TicketDetailViewModel extends _$TicketDetailViewModel {
  GetTicketDetailUseCase get _getTicketDetailUseCase =>
      ref.read(getTicketDetailUseCaseProvider);

  @override
  FutureOr<TicketDetailState> build(String listingId) async {
    final entity = await _getTicketDetailUseCase.call(int.parse(listingId));
    return TicketDetailState(listing: TicketListingUiModel.fromEntity(entity));
  }
}
