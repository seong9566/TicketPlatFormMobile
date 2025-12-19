import 'package:ticket_platform_mobile/core/enums/category.dart';
import 'package:ticket_platform_mobile/features/events/domain/entities/event_entity.dart';
import 'package:ticket_platform_mobile/features/events/domain/repositories/events_repository.dart';

class GetEventsUsecase {
  final EventsRepository _repository;

  GetEventsUsecase(this._repository);

  Future<List<EventEntity>> call(Category category) {
    return _repository.getEvents(category);
  }
}
