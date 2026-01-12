import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/usecases/get_ticketing_info_usecase.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_info_ui_model.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/viewmodels/ticketing_state.dart';
import 'package:ticket_platform_mobile/features/wishlist/domain/usecases/toggle_favorite_usecase.dart';
import 'package:ticket_platform_mobile/features/wishlist/presentation/providers/wishlist_providers_di.dart';

part 'ticketing_viewmodel.g.dart';

@riverpod
class TicketingViewModel extends _$TicketingViewModel {
  GetTicketingInfoUseCase get _getTicketingInfoUseCase =>
      ref.read(getTicketingInfoUseCaseProvider);

  ToggleFavoriteUsecase get _toggleFavoriteUsecase =>
      ref.read(toggleFavoriteUsecaseProvider);

  @override
  FutureOr<TicketingState> build(String performanceId) async {
    final entity = await _getTicketingInfoUseCase.call(
      int.parse(performanceId),
    );
    final uiModel = TicketingInfoUiModel.fromEntity(entity);

    final allGrade = TicketingGradeUiModel(
      id: 'all',
      name: '전체좌석',
      count: entity.tickets.length,
    );

    // 기존 등급 목록에서 '전체좌석'이 있다면 제외하고 수동으로 추가한 '전체좌석'을 맨 앞에 둡니다.
    final existingGrades = uiModel.ticketGrades
        .where((g) => g.name != '전체좌석')
        .toList();
    final ticketGrades = [allGrade, ...existingGrades];

    return TicketingState(
      ticketingInfo: uiModel.copyWith(ticketGrades: ticketGrades),
      selectedGrade: allGrade,
    );
  }

  void selectGrade(TicketingGradeUiModel grade) {
    state = AsyncValue.data(state.value!.copyWith(selectedGrade: grade));
  }

  void updateSortBy(String sortBy) {
    state = AsyncValue.data(state.value!.copyWith(sortBy: sortBy));
  }

  Future<void> toggleFavorite(int ticketId) async {
    final currentState = state.value;
    if (currentState == null) return;

    // 낙관적 업데이트: 현재 티켓의 즐겨찾기 상태를 반전시킵니다.
    final updatedTickets = currentState.ticketingInfo!.tickets.map((ticket) {
      if (ticket.ticketId == ticketId) {
        return ticket.copyWith(isFavorited: !ticket.isFavorited);
      }
      return ticket;
    }).toList();

    final optimisticState = currentState.copyWith(
      ticketingInfo: currentState.ticketingInfo!.copyWith(
        tickets: updatedTickets,
      ),
    );

    state = AsyncValue.data(optimisticState);

    try {
      final isFavorited = await _toggleFavoriteUsecase.call(ticketId: ticketId);

      // 서버 응답에 따라 상태를 재정렬하거나 최종 상태를 업데이트할 수 있습니다.
      // 여기서는 성공 시 서버에서 응답받은 최종 상태를 명시적으로 세팅하여 동기화합니다.
      final finalTickets = state.value!.ticketingInfo!.tickets.map((ticket) {
        if (ticket.ticketId == ticketId) {
          return ticket.copyWith(isFavorited: isFavorited);
        }
        return ticket;
      }).toList();

      state = AsyncValue.data(
        state.value!.copyWith(
          ticketingInfo: state.value!.ticketingInfo!.copyWith(
            tickets: finalTickets,
          ),
        ),
      );
    } catch (e) {
      // 실패 시 원래 상태로 롤백
      state = AsyncValue.data(currentState);
      rethrow;
    }
  }
}
