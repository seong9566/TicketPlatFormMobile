import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_category_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_event_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_feature_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_schedule_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_seat_option_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_ticket_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_trade_method_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/repositories/sell_repository.dart';
import 'package:ticket_platform_mobile/features/sell/domain/usecases/cancel_sell_ticket_usecase.dart';
import 'package:ticket_platform_mobile/features/sell/domain/usecases/get_sell_categories_usecase.dart';
import 'package:ticket_platform_mobile/features/sell/domain/usecases/get_sell_events_usecase.dart';
import 'package:ticket_platform_mobile/features/sell/domain/usecases/get_sell_features_usecase.dart';
import 'package:ticket_platform_mobile/features/sell/domain/usecases/get_sell_original_price_usecase.dart';
import 'package:ticket_platform_mobile/features/sell/domain/usecases/get_sell_schedules_usecase.dart';
import 'package:ticket_platform_mobile/features/sell/domain/usecases/get_sell_seat_options_usecase.dart';
import 'package:ticket_platform_mobile/features/sell/domain/usecases/get_sell_trade_methods_usecase.dart';

class MockSellRepository extends Mock implements SellRepository {}

void main() {
  late MockSellRepository mockRepository;

  setUp(() {
    mockRepository = MockSellRepository();
  });

  group('GetSellCategoriesUsecase', () {
    test('repository.getCategories()를 호출하고 결과를 반환한다', () async {
      final expected = [
        const SellCategoryEntity(categoryId: 1, code: 'CONCERT', name: '콘서트'),
        const SellCategoryEntity(categoryId: 2, code: 'MUSICAL', name: '뮤지컬'),
      ];
      when(
        () => mockRepository.getCategories(),
      ).thenAnswer((_) async => expected);

      final usecase = GetSellCategoriesUsecase(mockRepository);
      final result = await usecase();

      expect(result, equals(expected));
      expect(result.length, 2);
      verify(() => mockRepository.getCategories()).called(1);
    });

    test('repository가 예외를 던지면 usecase도 예외를 전파한다', () async {
      when(() => mockRepository.getCategories()).thenThrow(Exception('서버 오류'));

      final usecase = GetSellCategoriesUsecase(mockRepository);

      expect(() => usecase(), throwsException);
    });
  });

  group('GetSellEventsUsecase', () {
    test('categoryId와 함께 repository.getEvents()를 호출한다', () async {
      final expected = SellEventsPageEntity(
        events: [
          SellEventEntity(
            eventId: 1,
            title: '아이유 콘서트',
            venueName: '올림픽공원',
            startAt: DateTime(2025, 5, 1),
            endAt: DateTime(2025, 5, 1, 21),
          ),
        ],
        totalCount: 1,
        currentPage: 1,
        pageSize: 20,
        totalPages: 1,
      );
      when(
        () => mockRepository.getEvents(
          categoryId: any(named: 'categoryId'),
          keyword: any(named: 'keyword'),
          page: any(named: 'page'),
          size: any(named: 'size'),
        ),
      ).thenAnswer((_) async => expected);

      final usecase = GetSellEventsUsecase(mockRepository);
      final result = await usecase(categoryId: 1);

      expect(result.events.length, 1);
      expect(result.totalCount, 1);
      verify(
        () => mockRepository.getEvents(
          categoryId: 1,
          keyword: null,
          page: 1,
          size: 20,
        ),
      ).called(1);
    });

    test('keyword와 페이지 파라미터를 올바르게 전달한다', () async {
      final expected = SellEventsPageEntity(
        events: const [],
        totalCount: 0,
        currentPage: 2,
        pageSize: 10,
        totalPages: 0,
      );
      when(
        () => mockRepository.getEvents(
          categoryId: any(named: 'categoryId'),
          keyword: any(named: 'keyword'),
          page: any(named: 'page'),
          size: any(named: 'size'),
        ),
      ).thenAnswer((_) async => expected);

      final usecase = GetSellEventsUsecase(mockRepository);
      await usecase(categoryId: 3, keyword: '아이유', page: 2, size: 10);

      verify(
        () => mockRepository.getEvents(
          categoryId: 3,
          keyword: '아이유',
          page: 2,
          size: 10,
        ),
      ).called(1);
    });
  });

  group('GetSellSchedulesUsecase', () {
    test('eventId를 전달하여 repository.getSchedules()를 호출한다', () async {
      final expected = [
        const SellScheduleEntity(
          scheduleId: 'SCH-001',
          date: '2025-05-01',
          time: '18:00',
          dayOfWeek: '목',
        ),
      ];
      when(
        () => mockRepository.getSchedules(any()),
      ).thenAnswer((_) async => expected);

      final usecase = GetSellSchedulesUsecase(mockRepository);
      final result = await usecase(10);

      expect(result.length, 1);
      expect(result.first.scheduleId, 'SCH-001');
      verify(() => mockRepository.getSchedules(10)).called(1);
    });
  });

  group('GetSellSeatOptionsUsecase', () {
    test('eventId를 전달하여 repository.getSeatOptions()를 호출한다', () async {
      const expected = SellSeatOptionsEntity(
        grades: [
          SellSeatGradeEntity(gradeId: 1, code: 'VIP', gradeName: 'VIP석'),
        ],
        locations: [],
        areas: [],
        allowCustomLocation: false,
      );
      when(
        () => mockRepository.getSeatOptions(any()),
      ).thenAnswer((_) async => expected);

      final usecase = GetSellSeatOptionsUsecase(mockRepository);
      final result = await usecase(10);

      expect(result.grades.length, 1);
      expect(result.grades.first.code, 'VIP');
      verify(() => mockRepository.getSeatOptions(10)).called(1);
    });
  });

  group('GetSellFeaturesUsecase', () {
    test('repository.getFeatures()를 호출하고 결과를 반환한다', () async {
      final expected = [
        const SellFeatureEntity(id: 1, code: 'AISLE', nameKo: '통로석'),
        const SellFeatureEntity(id: 2, code: 'TOGETHER', nameKo: '연석'),
      ];
      when(
        () => mockRepository.getFeatures(),
      ).thenAnswer((_) async => expected);

      final usecase = GetSellFeaturesUsecase(mockRepository);
      final result = await usecase();

      expect(result.length, 2);
      expect(result.first.code, 'AISLE');
      verify(() => mockRepository.getFeatures()).called(1);
    });
  });

  group('GetSellTradeMethodsUsecase', () {
    test('repository.getTradeMethods()를 호출하고 결과를 반환한다', () async {
      final expected = [
        const SellTradeMethodEntity(id: 1, code: 'DIRECT', nameKo: '직거래'),
      ];
      when(
        () => mockRepository.getTradeMethods(),
      ).thenAnswer((_) async => expected);

      final usecase = GetSellTradeMethodsUsecase(mockRepository);
      final result = await usecase();

      expect(result.length, 1);
      expect(result.first.nameKo, '직거래');
      verify(() => mockRepository.getTradeMethods()).called(1);
    });
  });

  group('GetSellOriginalPriceUsecase', () {
    test('eventId와 gradeId를 전달하여 원가를 반환한다', () async {
      when(
        () => mockRepository.getOriginalPrice(
          eventId: any(named: 'eventId'),
          gradeId: any(named: 'gradeId'),
          locationId: any(named: 'locationId'),
          areaId: any(named: 'areaId'),
        ),
      ).thenAnswer((_) async => 150000);

      final usecase = GetSellOriginalPriceUsecase(mockRepository);
      final result = await usecase(eventId: 1, gradeId: 2);

      expect(result, 150000);
      verify(
        () => mockRepository.getOriginalPrice(
          eventId: 1,
          gradeId: 2,
          locationId: null,
          areaId: null,
        ),
      ).called(1);
    });

    test('원가가 없으면 null을 반환한다', () async {
      when(
        () => mockRepository.getOriginalPrice(
          eventId: any(named: 'eventId'),
          gradeId: any(named: 'gradeId'),
          locationId: any(named: 'locationId'),
          areaId: any(named: 'areaId'),
        ),
      ).thenAnswer((_) async => null);

      final usecase = GetSellOriginalPriceUsecase(mockRepository);
      final result = await usecase(eventId: 1, gradeId: 99);

      expect(result, isNull);
    });

    test('locationId와 areaId도 함께 전달한다', () async {
      when(
        () => mockRepository.getOriginalPrice(
          eventId: any(named: 'eventId'),
          gradeId: any(named: 'gradeId'),
          locationId: any(named: 'locationId'),
          areaId: any(named: 'areaId'),
        ),
      ).thenAnswer((_) async => 200000);

      final usecase = GetSellOriginalPriceUsecase(mockRepository);
      await usecase(eventId: 5, gradeId: 3, locationId: 10, areaId: 20);

      verify(
        () => mockRepository.getOriginalPrice(
          eventId: 5,
          gradeId: 3,
          locationId: 10,
          areaId: 20,
        ),
      ).called(1);
    });
  });

  group('CancelSellTicketUsecase', () {
    test('ticketId를 전달하여 repository.cancelTicket()을 호출한다', () async {
      const expected = SellTicketCancelResult(
        ticketId: 42,
        status: 'CANCELLED',
        message: '티켓이 취소되었습니다.',
      );
      when(
        () => mockRepository.cancelTicket(any()),
      ).thenAnswer((_) async => expected);

      final usecase = CancelSellTicketUsecase(mockRepository);
      final result = await usecase(42);

      expect(result.ticketId, 42);
      expect(result.status, 'CANCELLED');
      verify(() => mockRepository.cancelTicket(42)).called(1);
    });

    test('repository가 예외를 던지면 usecase도 예외를 전파한다', () async {
      when(
        () => mockRepository.cancelTicket(any()),
      ).thenThrow(Exception('취소 실패'));

      final usecase = CancelSellTicketUsecase(mockRepository);

      expect(() => usecase(99), throwsException);
    });
  });
}
