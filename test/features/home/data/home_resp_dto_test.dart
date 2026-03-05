import 'package:flutter_test/flutter_test.dart';
import 'package:ticket_platform_mobile/features/home/data/dto/response/home_resp_dto.dart';
import 'package:ticket_platform_mobile/features/home/domain/entities/home_entity.dart';

void main() {
  group('DeadlineDealDto', () {
    const dto = DeadlineDealDto(
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

    test('fromJson parses all required fields', () {
      final json = {
        'eventId': 1,
        'eventTitle': 'Test Event',
        'eventDate': '2026-03-10',
        'venue': 'Seoul Arena',
        'daysLeft': 5,
        'minTicketPrice': 100000,
        'originalMinTicketPrice': 150000,
        'ticketDiscountRate': 33,
        'availableTicketCount': 10,
        'categoryId': 1,
      };
      final parsed = DeadlineDealDto.fromJson(json);
      expect(parsed.eventId, 1);
      expect(parsed.eventTitle, 'Test Event');
      expect(parsed.daysLeft, 5);
      expect(parsed.minTicketPrice, 100000);
      expect(parsed.posterImageUrl, isNull);
    });

    test('fromJson parses optional posterImageUrl', () {
      final json = {
        'eventId': 1,
        'eventTitle': 'Test Event',
        'eventDate': '2026-03-10',
        'venue': 'Seoul Arena',
        'daysLeft': 5,
        'minTicketPrice': 100000,
        'originalMinTicketPrice': 150000,
        'ticketDiscountRate': 33,
        'availableTicketCount': 10,
        'categoryId': 1,
        'posterImageUrl': 'https://example.com/image.jpg',
      };
      final parsed = DeadlineDealDto.fromJson(json);
      expect(parsed.posterImageUrl, 'https://example.com/image.jpg');
    });

    test('toEntity maps all fields correctly', () {
      final entity = dto.toEntity();
      expect(entity, isA<DeadlineDealEntity>());
      expect(entity.eventId, dto.eventId);
      expect(entity.eventTitle, dto.eventTitle);
      expect(entity.eventDate, dto.eventDate);
      expect(entity.venue, dto.venue);
      expect(entity.daysLeft, dto.daysLeft);
      expect(entity.minTicketPrice, dto.minTicketPrice);
      expect(entity.originalMinTicketPrice, dto.originalMinTicketPrice);
      expect(entity.ticketDiscountRate, dto.ticketDiscountRate);
      expect(entity.availableTicketCount, dto.availableTicketCount);
      expect(entity.categoryId, dto.categoryId);
      expect(entity.posterImageUrl, isNull);
    });

    test('toEntity passes posterImageUrl when set', () {
      const dtoWithImage = DeadlineDealDto(
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
      final entity = dtoWithImage.toEntity();
      expect(entity.posterImageUrl, 'https://example.com/poster.jpg');
    });
  });

  group('PopularEventDto', () {
    test('fromJson handles null eventDescription', () {
      final json = {
        'eventId': 2,
        'eventTitle': 'Concert',
        'eventDate': '2026-04-01',
        'venue': 'KSPO Dome',
        'minTicketPrice': 80000,
        'originalMinTicketPrice': 100000,
        'ticketDiscountRate': 20,
        'availableTicketCount': 50,
        'categoryId': 2,
      };
      final dto = PopularEventDto.fromJson(json);
      expect(dto.eventDescription, isNull);
      expect(dto.eventId, 2);
    });

    test('toEntity preserves all fields', () {
      const dto = PopularEventDto(
        eventId: 2,
        eventTitle: 'Concert',
        eventDate: '2026-04-01',
        venue: 'KSPO Dome',
        minTicketPrice: 80000,
        originalMinTicketPrice: 100000,
        ticketDiscountRate: 20,
        availableTicketCount: 50,
        categoryId: 2,
        eventDescription: 'A great concert',
      );
      final entity = dto.toEntity();
      expect(entity, isA<PopularEventEntity>());
      expect(entity.eventId, 2);
      expect(entity.eventDescription, 'A great concert');
      expect(entity.categoryId, 2);
    });
  });

  group('RecommendedEventDto', () {
    test('fromJson parses isWishedByMe', () {
      final json = {
        'eventId': 3,
        'eventTitle': 'Show',
        'eventDate': '2026-05-01',
        'venue': 'Stadium',
        'minTicketPrice': 60000,
        'originalMinTicketPrice': 80000,
        'ticketDiscountRate': 25,
        'availableTicketCount': 20,
        'categoryId': 3,
        'isWishedByMe': true,
      };
      final dto = RecommendedEventDto.fromJson(json);
      expect(dto.isWishedByMe, isTrue);
      expect(dto.eventId, 3);
    });

    test('toEntity preserves isWishedByMe', () {
      const dto = RecommendedEventDto(
        eventId: 3,
        eventTitle: 'Show',
        eventDate: '2026-05-01',
        venue: 'Stadium',
        minTicketPrice: 60000,
        originalMinTicketPrice: 80000,
        ticketDiscountRate: 25,
        availableTicketCount: 20,
        categoryId: 3,
        isWishedByMe: true,
      );
      final entity = dto.toEntity();
      expect(entity, isA<RecommendedEventEntity>());
      expect(entity.isWishedByMe, isTrue);
      expect(entity.eventId, 3);
    });
  });

  group('HomeRespDto', () {
    test('deadlineDeals defaults to empty list', () {
      const dto = HomeRespDto(popularEvents: [], recommendedEvents: []);
      expect(dto.deadlineDeals, isEmpty);
    });

    test('toEntity maps all sections', () {
      const dto = HomeRespDto(
        deadlineDeals: [],
        popularEvents: [],
        recommendedEvents: [],
      );
      final entity = dto.toEntity();
      expect(entity.deadlineDeals, isEmpty);
      expect(entity.popularEvents, isEmpty);
      expect(entity.recommendedEvents, isEmpty);
    });

    test('toEntity converts nested DTOs', () {
      const dto = HomeRespDto(
        deadlineDeals: [
          DeadlineDealDto(
            eventId: 1,
            eventTitle: 'Deal',
            eventDate: '2026-03-10',
            venue: 'Venue',
            daysLeft: 3,
            minTicketPrice: 50000,
            originalMinTicketPrice: 60000,
            ticketDiscountRate: 17,
            availableTicketCount: 5,
            categoryId: 1,
          ),
        ],
        popularEvents: [],
        recommendedEvents: [],
      );
      final entity = dto.toEntity();
      expect(entity.deadlineDeals.length, 1);
      expect(entity.deadlineDeals.first.eventId, 1);
    });
  });
}
