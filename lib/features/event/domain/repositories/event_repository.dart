import 'package:ticket_platform_mobile/features/event/domain/entities/event_session.dart';

abstract class EventRepository {
  Future<List<EventSession>> getPopularEventSessions(String eventId);
  Future<List<EventSession>> getAllEventSessions(String eventId);
}
