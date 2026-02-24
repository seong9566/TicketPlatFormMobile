import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/presentation/providers/sales_dashboard_providers_di.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/presentation/ui_models/event_ticket_ui_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_ticket_list_viewmodel.freezed.dart';
part 'event_ticket_list_viewmodel.g.dart';

@freezed
abstract class EventTicketListState with _$EventTicketListState {
  const factory EventTicketListState({
    required String eventTitle,
    @Default([]) List<EventTicketUiModel> items,
    @Default(1) int currentPage,
    @Default(false) bool hasMore,
    @Default(false) bool isLoadingMore,
    int? totalCount,
  }) = _EventTicketListState;
}

@riverpod
class EventTicketListViewModel extends _$EventTicketListViewModel {
  @override
  Future<EventTicketListState> build(int eventId) async {
    return _fetchTickets(page: 1);
  }

  Future<EventTicketListState> _fetchTickets({required int page}) async {
    final currentState = state.value;
    final usecase = ref.read(getEventTicketsUsecaseProvider);
    final eventId = this.eventId;

    final result = await usecase.call(eventId: eventId, page: page, size: 20);

    final newItems = result.tickets
        .map((e) => EventTicketUiModel.fromEntity(e))
        .toList();

    if (page == 1) {
      return EventTicketListState(
        eventTitle: result.eventTitle,
        items: newItems,
        currentPage: result.page,
        hasMore: result.hasMore,
        totalCount: result.totalCount,
      );
    } else {
      return currentState!.copyWith(
        items: [...currentState.items, ...newItems],
        currentPage: result.page,
        hasMore: result.hasMore,
        totalCount: result.totalCount,
        isLoadingMore: false,
      );
    }
  }

  Future<void> loadMore() async {
    final currentState = state.value;
    if (currentState == null ||
        !currentState.hasMore ||
        currentState.isLoadingMore) {
      return;
    }

    state = AsyncValue.data(currentState.copyWith(isLoadingMore: true));

    try {
      final newState = await _fetchTickets(page: currentState.currentPage + 1);
      state = AsyncValue.data(newState);
    } catch (e, stack) {
      AppLogger.e('추가 데이터 로드 실패', e, stack);
      state = AsyncValue.data(currentState.copyWith(isLoadingMore: false));
    }
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchTickets(page: 1));
  }
}
