import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ticket_platform_mobile/features/home/domain/entities/home_entity.dart';
import 'package:ticket_platform_mobile/features/home/domain/repositories/home_repository.dart';
import 'package:ticket_platform_mobile/features/home/domain/usecases/get_home_data_usecase.dart';

import '../../../mocks/mock_home_repository.dart';

HomeEntity _makeTestEntity() => HomeEntity(
  deadlineDeals: const [
    DeadlineDealEntity(
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
    ),
  ],
  popularEvents: const [],
  recommendedEvents: const [],
);

void main() {
  late MockHomeRepository mockRepository;
  late GetHomeDataUsecase usecase;

  setUp(() {
    mockRepository = MockHomeRepository();
    usecase = GetHomeDataUsecase(mockRepository);
  });

  group('GetHomeDataUsecase', () {
    test('calls repository.getHomeData() and returns the entity', () async {
      final testEntity = _makeTestEntity();
      when(
        () => mockRepository.getHomeData(),
      ).thenAnswer((_) async => testEntity);

      final result = await usecase.call();

      expect(result, testEntity);
      verify(() => mockRepository.getHomeData()).called(1);
    });

    test('calls repository exactly once per call()', () async {
      final testEntity = _makeTestEntity();
      when(
        () => mockRepository.getHomeData(),
      ).thenAnswer((_) async => testEntity);

      await usecase.call();
      await usecase.call();

      verify(() => mockRepository.getHomeData()).called(2);
    });

    test('propagates Exception from repository', () async {
      when(
        () => mockRepository.getHomeData(),
      ).thenThrow(Exception('Network error'));

      await expectLater(usecase.call(), throwsA(isA<Exception>()));
    });

    test('returns entity with correct deadlineDeals', () async {
      final testEntity = _makeTestEntity();
      when(
        () => mockRepository.getHomeData(),
      ).thenAnswer((_) async => testEntity);

      final result = await usecase.call();

      expect(result.deadlineDeals.length, 1);
      expect(result.deadlineDeals.first.eventId, 1);
      expect(result.deadlineDeals.first.eventTitle, 'Test Event');
    });

    test(
      'returns entity with empty lists when repository returns them',
      () async {
        const emptyEntity = HomeEntity(
          deadlineDeals: [],
          popularEvents: [],
          recommendedEvents: [],
        );
        when(
          () => mockRepository.getHomeData(),
        ).thenAnswer((_) async => emptyEntity);

        final result = await usecase.call();

        expect(result.deadlineDeals, isEmpty);
        expect(result.popularEvents, isEmpty);
        expect(result.recommendedEvents, isEmpty);
      },
    );
  });

  // Additional test: verify HomeRepository interface contract
  group('HomeRepository interface', () {
    test('mock implements HomeRepository', () {
      expect(mockRepository, isA<HomeRepository>());
    });
  });
}
