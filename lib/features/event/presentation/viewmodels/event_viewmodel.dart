import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/event/domain/usecases/get_event_sessions_usecase.dart';
import 'package:ticket_platform_mobile/features/event/domain/entities/event_type.dart';
import 'package:ticket_platform_mobile/features/event/presentation/viewmodels/event_state.dart';

part 'event_viewmodel.g.dart';

@riverpod
class EventViewModel extends _$EventViewModel {
  @override
  FutureOr<EventState> build(String eventId) async {
    return _fetchData(eventId);
  }

  Future<EventState> _fetchData(String eventId) async {
    final useCase = ref.read(getEventSessionsUseCaseProvider);

    // Parallel fetch
    final results = await Future.wait([
      useCase.getPopular(eventId),
      useCase.getAll(eventId),
    ]);

    final popularEntities = results[0];
    final allEntities = results[1];

    // Ensure eventId is valid, defaulting to CONCERT if not found
    final type = EventType.values.firstWhere(
      (t) => t.code == eventId,
      orElse: () => EventType.concert,
    );

    return EventState(
      selectedEvent: type.nameKo,
      popularEventSessions: popularEntities
          .map((e) => EventSessionUiModel.fromEntity(e))
          .toList(),
      allEventSessions: allEntities
          .map((e) => EventSessionUiModel.fromEntity(e))
          .toList(),
      isLoading: false,
    );
  }

  Future<void> selectEvent(String event) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      // In a real app, this might trigger a new fetch or filter
      // For now, just update the selected tab state
      final currentState = state.value!;
      return currentState.copyWith(selectedEvent: event);
    });
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
    await future;
  }
}
