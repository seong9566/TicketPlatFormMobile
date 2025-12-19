import 'package:ticket_platform_mobile/core/enums/category.dart';
import 'package:ticket_platform_mobile/features/events/domain/entities/event_entity.dart';

abstract class EventsRepository {
  Future<List<EventEntity>> getEvents(Category category);
}
