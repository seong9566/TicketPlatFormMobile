import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/usecases/get_ticketing_info_usecase.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_ui_model.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/viewmodels/ticketing_state.dart';

part 'ticketing_viewmodel.g.dart';

@riverpod
class TicketingViewModel extends _$TicketingViewModel {
  GetTicketingInfoUseCase get _getTicketingInfoUseCase =>
      ref.read(getTicketingInfoUseCaseProvider);

  @override
  FutureOr<TicketingState> build(String performanceId) async {
    final entity = await _getTicketingInfoUseCase.call(
      int.parse(performanceId),
    );
    final uiModel = TicketingUiModel.fromEntity(entity);

    final allGrade = TicketGradeInfo(
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

  void selectGrade(TicketGradeInfo grade) {
    state = AsyncValue.data(state.value!.copyWith(selectedGrade: grade));
  }

  void updateSortBy(String sortBy) {
    state = AsyncValue.data(state.value!.copyWith(sortBy: sortBy));
  }
}
