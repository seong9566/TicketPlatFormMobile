import 'package:flutter_test/flutter_test.dart';
import 'package:ticket_platform_mobile/features/home/domain/entities/home_entity.dart';

void main() {
  group('HomeEntity', () {
    test('creates with empty lists', () {
      const entity = HomeEntity(
        deadlineDeals: [],
        popularEvents: [],
        recommendedEvents: [],
      );
      expect(entity.deadlineDeals, isEmpty);
      expect(entity.popularEvents, isEmpty);
      expect(entity.recommendedEvents, isEmpty);
    });

    test('Freezed equality - same values are equal', () {
      const a = HomeEntity(
        deadlineDeals: [],
        popularEvents: [],
        recommendedEvents: [],
      );
      const b = HomeEntity(
        deadlineDeals: [],
        popularEvents: [],
        recommendedEvents: [],
      );
      expect(a, b);
    });

    test('copyWith preserves unchanged fields', () {
      const original = HomeEntity(
        deadlineDeals: [],
        popularEvents: [],
        recommendedEvents: [],
      );
      final copy = original.copyWith();
      expect(copy, original);
    });
  });

  group('DeadlineDealEntity', () {
    const entity = DeadlineDealEntity(
      eventId: 1,
      eventTitle: 'Test Event',
      eventDate: '2026-03-10',
      venue: 'Seoul Arena',
      daysLeft: 5,
      minTicketPrice: 100000,
      originalMinTicketPrice: 150000,
      ticketDiscountRate: 33,
      availableTicketCount: 10,
      categoryId: 1,
    );

    test('creates with required fields', () {
      expect(entity.eventId, 1);
      expect(entity.eventTitle, 'Test Event');
      expect(entity.eventDate, '2026-03-10');
      expect(entity.venue, 'Seoul Arena');
      expect(entity.daysLeft, 5);
      expect(entity.minTicketPrice, 100000);
      expect(entity.originalMinTicketPrice, 150000);
      expect(entity.ticketDiscountRate, 33);
      expect(entity.availableTicketCount, 10);
      expect(entity.categoryId, 1);
    });

    test('posterImageUrl defaults to null', () {
      expect(entity.posterImageUrl, isNull);
    });

    test('posterImageUrl can be set', () {
      const withImage = DeadlineDealEntity(
        eventId: 2,
        eventTitle: 'Event',
        eventDate: '2026-03-10',
        venue: 'Venue',
        daysLeft: 1,
        minTicketPrice: 50000,
        originalMinTicketPrice: 60000,
        ticketDiscountRate: 17,
        availableTicketCount: 5,
        categoryId: 2,
        posterImageUrl: 'https://example.com/poster.jpg',
      );
      expect(withImage.posterImageUrl, 'https://example.com/poster.jpg');
    });

    test('copyWith modifies only specified field', () {
      final modified = entity.copyWith(daysLeft: 0);
      expect(modified.daysLeft, 0);
      expect(modified.eventTitle, entity.eventTitle);
      expect(modified.eventId, entity.eventId);
    });

    test('Freezed equality works', () {
      const same = DeadlineDealEntity(
        eventId: 1,
        eventTitle: 'Test Event',
        eventDate: '2026-03-10',
        venue: 'Seoul Arena',
        daysLeft: 5,
        minTicketPrice: 100000,
        originalMinTicketPrice: 150000,
        ticketDiscountRate: 33,
        availableTicketCount: 10,
        categoryId: 1,
      );
      expect(entity, same);
    });
  });

  group('PopularEventEntity', () {
    const entity = PopularEventEntity(
      eventId: 2,
      eventTitle: 'Popular Concert',
      eventDate: '2026-04-01',
      venue: 'KSPO Dome',
      minTicketPrice: 80000,
      originalMinTicketPrice: 100000,
      ticketDiscountRate: 20,
      availableTicketCount: 50,
      categoryId: 2,
    );

    test('creates with required fields', () {
      expect(entity.eventId, 2);
      expect(entity.eventTitle, 'Popular Concert');
      expect(entity.availableTicketCount, 50);
    });

    test('eventDescription defaults to null', () {
      expect(entity.eventDescription, isNull);
    });

    test('eventDescription can be provided', () {
      const withDesc = PopularEventEntity(
        eventId: 3,
        eventTitle: 'Event',
        eventDate: '2026-04-01',
        venue: 'Venue',
        minTicketPrice: 50000,
        originalMinTicketPrice: 60000,
        ticketDiscountRate: 17,
        availableTicketCount: 10,
        categoryId: 1,
        eventDescription: 'A great show',
      );
      expect(withDesc.eventDescription, 'A great show');
    });
  });

  group('RecommendedEventEntity', () {
    test('creates with isWishedByMe true', () {
      const entity = RecommendedEventEntity(
        eventId: 3,
        eventTitle: 'Recommended Show',
        eventDate: '2026-05-01',
        venue: 'Jamsil Stadium',
        minTicketPrice: 60000,
        originalMinTicketPrice: 80000,
        ticketDiscountRate: 25,
        availableTicketCount: 20,
        categoryId: 3,
        isWishedByMe: true,
      );
      expect(entity.isWishedByMe, isTrue);
      expect(entity.eventId, 3);
    });

    test('creates with isWishedByMe false', () {
      const entity = RecommendedEventEntity(
        eventId: 4,
        eventTitle: 'Another Show',
        eventDate: '2026-06-01',
        venue: 'Venue',
        minTicketPrice: 40000,
        originalMinTicketPrice: 50000,
        ticketDiscountRate: 20,
        availableTicketCount: 15,
        categoryId: 1,
        isWishedByMe: false,
      );
      expect(entity.isWishedByMe, isFalse);
    });
  });
}
