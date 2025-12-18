import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/event/domain/entities/event_session.dart';
import 'package:ticket_platform_mobile/features/event/domain/repositories/event_repository.dart';
import 'package:ticket_platform_mobile/features/event/data/repositories/event_repository_impl.dart';

part 'get_event_sessions_usecase.g.dart';

@riverpod
GetEventSessionsUseCase getEventSessionsUseCase(Ref ref) {
  return GetEventSessionsUseCase(
    repository: ref.watch(eventRepositoryProvider),
  );
}

class GetEventSessionsUseCase {
  final EventRepository _repository;

  GetEventSessionsUseCase({required EventRepository repository})
    : _repository = repository;

  Future<List<EventSession>> getPopular(String eventId) async {
    return _repository.getPopularEventSessions(eventId);
  }

  Future<List<EventSession>> getAll(String eventId) async {
    return _repository.getAllEventSessions(eventId);
  }
}
