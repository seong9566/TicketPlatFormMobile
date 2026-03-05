import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ticket_platform_mobile/features/home/data/repositories/home_repository_impl.dart';
import 'package:ticket_platform_mobile/features/home/domain/entities/home_entity.dart';
import 'package:ticket_platform_mobile/features/home/presentation/ui_models/home_ui_model.dart';
import 'package:ticket_platform_mobile/features/home/presentation/viewmodels/home_viewmodel.dart';

import '../../../helpers/test_provider_container.dart';
import '../../../mocks/mock_home_repository.dart';

HomeEntity _makeTestEntity({
  List<DeadlineDealEntity> deadlineDeals = const [],
  List<PopularEventEntity> popularEvents = const [],
  List<RecommendedEventEntity> recommendedEvents = const [],
}) => HomeEntity(
  deadlineDeals: deadlineDeals,
  popularEvents: popularEvents,
  recommendedEvents: recommendedEvents,
);

const _singleDeal = DeadlineDealEntity(
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

void main() {
  late MockHomeRepository mockRepository;

  setUp(() {
    mockRepository = MockHomeRepository();
  });

  ProviderContainer makeContainer() {
    return createTestContainer(
      overrides: [homeRepositoryProvider.overrideWithValue(mockRepository)],
    );
  }

  group('HomeViewModel', () {
    test('build() returns HomeUiModel on success', () async {
      final testEntity = _makeTestEntity(deadlineDeals: [_singleDeal]);
      when(
        () => mockRepository.getHomeData(),
      ).thenAnswer((_) async => testEntity);

      final container = makeContainer();
      final state = await container.read(homeViewModelProvider.future);

      expect(state, isA<HomeUiModel>());
      expect(state.deadlineDeals.length, 1);
      expect(state.deadlineDeals.first.eventId, 1);
      expect(state.popularEvents, isEmpty);
      expect(state.recommendedEvents, isEmpty);
    });

    test('build() results in AsyncData after success', () async {
      final testEntity = _makeTestEntity();
      when(
        () => mockRepository.getHomeData(),
      ).thenAnswer((_) async => testEntity);

      final container = makeContainer();
      await container.read(homeViewModelProvider.future);

      final state = container.read(homeViewModelProvider);
      expect(state, isA<AsyncData<HomeUiModel>>());
    });

    test('build() starts in AsyncLoading state before completion', () {
      // Use a never-resolving completer to observe the loading state synchronously
      final never = Completer<HomeEntity>().future;
      when(() => mockRepository.getHomeData()).thenAnswer((_) => never);

      final container = makeContainer();

      // Trigger the build synchronously — state is immediately AsyncLoading
      container.read(homeViewModelProvider.future);
      final state = container.read(homeViewModelProvider);

      expect(state, isA<AsyncLoading<HomeUiModel>>());
    });

    test('refresh() fetches fresh data successfully', () async {
      final testEntity = _makeTestEntity(deadlineDeals: [_singleDeal]);
      when(
        () => mockRepository.getHomeData(),
      ).thenAnswer((_) async => testEntity);

      final container = makeContainer();
      // Await initial build
      await container.read(homeViewModelProvider.future);

      // Call refresh
      await container.read(homeViewModelProvider.notifier).refresh();

      final state = container.read(homeViewModelProvider);
      expect(state, isA<AsyncData<HomeUiModel>>());
      // Called once for build, once for refresh
      verify(() => mockRepository.getHomeData()).called(2);
    });

    test('HomeUiModel.deadlineDeals maps displayPrice', () async {
      final testEntity = _makeTestEntity(deadlineDeals: [_singleDeal]);
      when(
        () => mockRepository.getHomeData(),
      ).thenAnswer((_) async => testEntity);

      final container = makeContainer();
      final state = await container.read(homeViewModelProvider.future);

      expect(state.deadlineDeals.first.displayPrice, '100,000원');
      expect(state.deadlineDeals.first.dDayLabel, 'D-5');
    });
  });
}
