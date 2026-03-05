import 'package:flutter_test/flutter_test.dart';
import 'package:ticket_platform_mobile/features/home/domain/entities/home_entity.dart';
import 'package:ticket_platform_mobile/features/home/presentation/ui_models/home_ui_model.dart';

void main() {
  group('DeadlineDealUiModel', () {
    const baseEntity = DeadlineDealEntity(
      eventId: 1,
      eventTitle: 'Test Event',
      eventDate: '2026-03-10',
      venue: 'Seoul Arena',
      daysLeft: 5,
      minTicketPrice: 100000,
      originalMinTicketPrice: 150000,
      ticketDiscountRate: 10,
      availableTicketCount: 12,
      categoryId: 1,
    );

    test('fromEntity maps basic fields correctly', () {
      final model = DeadlineDealUiModel.fromEntity(baseEntity);
      expect(model.eventId, 1);
      expect(model.title, 'Test Event');
      expect(model.date, '2026-03-10');
      expect(model.venue, 'Seoul Arena');
      expect(model.daysLeft, 5);
    });

    test('displayPrice formats with 원 suffix', () {
      final model = DeadlineDealUiModel.fromEntity(baseEntity);
      expect(model.displayPrice, '100,000원');
    });

    test('discountLabel shows minus percentage', () {
      final model = DeadlineDealUiModel.fromEntity(baseEntity);
      expect(model.discountLabel, '-10%');
    });

    test('availableTicketLabel shows count with 건 판매중', () {
      final model = DeadlineDealUiModel.fromEntity(baseEntity);
      expect(model.availableTicketLabel, '12건 판매중');
    });

    test('imageUrl defaults to empty string when posterImageUrl is null', () {
      final model = DeadlineDealUiModel.fromEntity(baseEntity);
      expect(model.imageUrl, '');
    });

    test('imageUrl uses posterImageUrl when provided', () {
      const entityWithImage = DeadlineDealEntity(
        eventId: 2,
        eventTitle: 'Event',
        eventDate: '2026-03-10',
        venue: 'Venue',
        daysLeft: 1,
        minTicketPrice: 50000,
        originalMinTicketPrice: 60000,
        ticketDiscountRate: 17,
        availableTicketCount: 5,
        categoryId: 1,
        posterImageUrl: 'https://example.com/poster.jpg',
      );
      final model = DeadlineDealUiModel.fromEntity(entityWithImage);
      expect(model.imageUrl, 'https://example.com/poster.jpg');
    });

    group('dDayLabel', () {
      test('shows D-N when daysLeft > 0', () {
        final model = DeadlineDealUiModel.fromEntity(baseEntity);
        expect(model.dDayLabel, 'D-5');
      });

      test('shows D-DAY when daysLeft is 0', () {
        const todayEntity = DeadlineDealEntity(
          eventId: 1,
          eventTitle: 'Today Event',
          eventDate: '2026-03-06',
          venue: 'Venue',
          daysLeft: 0,
          minTicketPrice: 50000,
          originalMinTicketPrice: 60000,
          ticketDiscountRate: 17,
          availableTicketCount: 3,
          categoryId: 1,
        );
        final model = DeadlineDealUiModel.fromEntity(todayEntity);
        expect(model.dDayLabel, 'D-DAY');
      });

      test('shows D-1 for daysLeft 1', () {
        const entity = DeadlineDealEntity(
          eventId: 1,
          eventTitle: 'Event',
          eventDate: '2026-03-07',
          venue: 'Venue',
          daysLeft: 1,
          minTicketPrice: 50000,
          originalMinTicketPrice: 60000,
          ticketDiscountRate: 17,
          availableTicketCount: 3,
          categoryId: 1,
        );
        final model = DeadlineDealUiModel.fromEntity(entity);
        expect(model.dDayLabel, 'D-1');
      });
    });

    test('displayPrice formats large number correctly', () {
      const highPriceEntity = DeadlineDealEntity(
        eventId: 3,
        eventTitle: 'VIP Event',
        eventDate: '2026-04-01',
        venue: 'Venue',
        daysLeft: 10,
        minTicketPrice: 1000000,
        originalMinTicketPrice: 1200000,
        ticketDiscountRate: 17,
        availableTicketCount: 2,
        categoryId: 1,
      );
      final model = DeadlineDealUiModel.fromEntity(highPriceEntity);
      expect(model.displayPrice, '1,000,000원');
    });
  });

  group('PopularEventUiModel', () {
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

    test('fromEntity maps fields correctly', () {
      final model = PopularEventUiModel.fromEntity(entity);
      expect(model.eventId, 2);
      expect(model.title, 'Popular Concert');
      expect(model.date, '2026-04-01');
      expect(model.venue, 'KSPO Dome');
      expect(model.categoryId, 2);
    });

    test('displayPrice formats correctly', () {
      final model = PopularEventUiModel.fromEntity(entity);
      expect(model.displayPrice, '80,000원');
    });

    test('discountLabel formats correctly', () {
      final model = PopularEventUiModel.fromEntity(entity);
      expect(model.discountLabel, '-20%');
    });

    test('availableTicketLabel shows count with 건 판매중', () {
      final model = PopularEventUiModel.fromEntity(entity);
      expect(model.availableTicketLabel, '50건 판매중');
    });

    test('description defaults to empty string when null', () {
      final model = PopularEventUiModel.fromEntity(entity);
      expect(model.description, '');
    });

    test('description uses eventDescription when provided', () {
      const entityWithDesc = PopularEventEntity(
        eventId: 3,
        eventTitle: 'Event',
        eventDate: '2026-04-01',
        venue: 'Venue',
        minTicketPrice: 50000,
        originalMinTicketPrice: 60000,
        ticketDiscountRate: 17,
        availableTicketCount: 10,
        categoryId: 1,
        eventDescription: 'An amazing show',
      );
      final model = PopularEventUiModel.fromEntity(entityWithDesc);
      expect(model.description, 'An amazing show');
    });
  });

  group('RecommendedEventUiModel', () {
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

    test('fromEntity maps isWishedByMe true', () {
      final model = RecommendedEventUiModel.fromEntity(entity);
      expect(model.isWishedByMe, isTrue);
    });

    test('availableTicketLabel shows count with 건 (no 판매중)', () {
      final model = RecommendedEventUiModel.fromEntity(entity);
      expect(model.availableTicketLabel, '20건');
    });

    test('displayPrice formats correctly', () {
      final model = RecommendedEventUiModel.fromEntity(entity);
      expect(model.displayPrice, '60,000원');
    });

    test('fromEntity maps isWishedByMe false', () {
      const notWished = RecommendedEventEntity(
        eventId: 4,
        eventTitle: 'Not Wished',
        eventDate: '2026-06-01',
        venue: 'Venue',
        minTicketPrice: 40000,
        originalMinTicketPrice: 50000,
        ticketDiscountRate: 20,
        availableTicketCount: 5,
        categoryId: 1,
        isWishedByMe: false,
      );
      final model = RecommendedEventUiModel.fromEntity(notWished);
      expect(model.isWishedByMe, isFalse);
    });
  });

  group('HomeUiModel', () {
    test('fromEntity creates empty lists', () {
      const entity = HomeEntity(
        deadlineDeals: [],
        popularEvents: [],
        recommendedEvents: [],
      );
      final model = HomeUiModel.fromEntity(entity);
      expect(model.deadlineDeals, isEmpty);
      expect(model.popularEvents, isEmpty);
      expect(model.recommendedEvents, isEmpty);
    });

    test('fromEntity maps all sections with items', () {
      const entity = HomeEntity(
        deadlineDeals: [
          DeadlineDealEntity(
            eventId: 1,
            eventTitle: 'Deal',
            eventDate: '2026-03-10',
            venue: 'Seoul Arena',
            daysLeft: 3,
            minTicketPrice: 100000,
            originalMinTicketPrice: 150000,
            ticketDiscountRate: 33,
            availableTicketCount: 10,
            categoryId: 1,
          ),
        ],
        popularEvents: [
          PopularEventEntity(
            eventId: 2,
            eventTitle: 'Concert',
            eventDate: '2026-04-01',
            venue: 'Dome',
            minTicketPrice: 80000,
            originalMinTicketPrice: 100000,
            ticketDiscountRate: 20,
            availableTicketCount: 50,
            categoryId: 2,
          ),
        ],
        recommendedEvents: [
          RecommendedEventEntity(
            eventId: 3,
            eventTitle: 'Show',
            eventDate: '2026-05-01',
            venue: 'Stadium',
            minTicketPrice: 60000,
            originalMinTicketPrice: 80000,
            ticketDiscountRate: 25,
            availableTicketCount: 20,
            categoryId: 3,
            isWishedByMe: false,
          ),
        ],
      );

      final model = HomeUiModel.fromEntity(entity);
      expect(model.deadlineDeals.length, 1);
      expect(model.popularEvents.length, 1);
      expect(model.recommendedEvents.length, 1);
      expect(model.deadlineDeals.first.eventId, 1);
      expect(model.popularEvents.first.eventId, 2);
      expect(model.recommendedEvents.first.eventId, 3);
    });
  });
}
