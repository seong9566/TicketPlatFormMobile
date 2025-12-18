import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/event/domain/entities/event_session.dart';
import 'package:ticket_platform_mobile/features/event/domain/repositories/event_repository.dart';
import 'package:ticket_platform_mobile/features/event/data/dto/response/event_session_resp_dto.dart';

part 'event_repository_impl.g.dart';

@riverpod
EventRepository eventRepository(Ref ref) {
  return EventRepositoryImpl();
}

class EventRepositoryImpl implements EventRepository {
  EventRepositoryImpl();

  @override
  Future<List<EventSession>> getPopularEventSessions(String eventId) async {
    try {
      // Mock Data Logic moved from RemoteDataSource
      await Future.delayed(const Duration(milliseconds: 500));
      final dtos = [
        const EventSessionRespDto(
          id: 1,
          name: '아이유 (IU)',
          englishName: 'IU',
          title: '2024 월드 투어 서울',
          imageUrl: 'https://via.placeholder.com/150',
          isNew: true,
          isSoldOut: true,
          ticketCount: 12,
        ),
        const EventSessionRespDto(
          id: 2,
          name: '뉴진스 (NewJeans)',
          englishName: 'NewJeans',
          title: 'Bunnies Camp 2024',
          imageUrl: 'https://via.placeholder.com/150',
          ticketCount: 45,
        ),
        const EventSessionRespDto(
          id: 3,
          name: '싸이 (PSY)',
          englishName: 'PSY',
          title: '흠뻑쇼 2024 - SUMMER SWAG',
          imageUrl: 'https://via.placeholder.com/150',
          isHot: true,
          ticketCount: 82,
        ),
      ];

      return dtos.map((e) => e.toEntity()).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<EventSession>> getAllEventSessions(String eventId) async {
    try {
      // Mock Data Logic moved from RemoteDataSource
      await Future.delayed(const Duration(milliseconds: 500));
      final dtos = [
        const EventSessionRespDto(
          id: 4,
          name: '임영웅',
          englishName: 'Lim Young Woong',
          title: 'IM HERO 앙코르 콘서트',
          imageUrl: 'https://via.placeholder.com/150',
          ticketCount: 5,
        ),
        const EventSessionRespDto(
          id: 5,
          name: '데이식스 (DAY6)',
          englishName: 'DAY6',
          title: 'Welcome to the Show',
          imageUrl: 'https://via.placeholder.com/150',
          ticketCount: 0,
        ),
      ];

      return dtos.map((e) => e.toEntity()).toList();
    } catch (e) {
      rethrow;
    }
  }
}
