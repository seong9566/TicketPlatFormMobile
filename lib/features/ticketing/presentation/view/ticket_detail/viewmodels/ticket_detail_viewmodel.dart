import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/usecases/get_ticket_detail_usecase.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/providers/ticketing_providers_di.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_ticket_detail_ui_model.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticket_detail/viewmodels/ticket_detail_state.dart';
import 'package:ticket_platform_mobile/features/wishlist/domain/usecases/toggle_favorite_usecase.dart';
import 'package:ticket_platform_mobile/features/wishlist/presentation/providers/wishlist_providers_di.dart';

part 'ticket_detail_viewmodel.g.dart';

@riverpod
class TicketDetailViewModel extends _$TicketDetailViewModel {
  GetTicketDetailUseCase get _getTicketDetailUseCase =>
      ref.read(getTicketDetailUseCaseProvider);

  ToggleFavoriteUsecase get _toggleFavoriteUsecase =>
      ref.read(toggleFavoriteUsecaseProvider);

  @override
  FutureOr<TicketDetailState> build(int ticketId) async {
    final entity = await _getTicketDetailUseCase.call(ticketId);
    return TicketDetailState(
      detail: TicketingTicketDetailUiModel.fromEntity(entity),
    );
  }

  /// 수동 새로고침 (에러 후 재시도)
  Future<void> refresh(int ticketId) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final entity = await _getTicketDetailUseCase.call(ticketId);
      return TicketDetailState(
        detail: TicketingTicketDetailUiModel.fromEntity(entity),
      );
    });
  }

  Future<void> toggleLike() async {
    final detail = state.value?.detail;
    if (detail == null) return;

    final ticketId = detail.ticketId;

    final result = await AsyncValue.guard(() async {
      await _toggleFavoriteUsecase.call(ticketId: ticketId);
    });

    if (!result.hasError) {
      ref.invalidateSelf();
    }
  }
}
