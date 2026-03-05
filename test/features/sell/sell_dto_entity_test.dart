import 'package:flutter_test/flutter_test.dart';
import 'package:ticket_platform_mobile/features/sell/data/dto/response/sell_category_resp_dto.dart';
import 'package:ticket_platform_mobile/features/sell/data/dto/response/sell_event_resp_dto.dart';
import 'package:ticket_platform_mobile/features/sell/data/dto/response/sell_feature_resp_dto.dart';
import 'package:ticket_platform_mobile/features/sell/data/dto/response/sell_schedule_resp_dto.dart';
import 'package:ticket_platform_mobile/features/sell/data/dto/response/sell_trade_method_resp_dto.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_category_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_event_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_seat_option_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_ticket_entity.dart';

void main() {
  group('SellCategoryRespDto', () {
    test('fromJson 파싱이 올바르게 동작한다', () {
      final json = {'categoryId': 1, 'code': 'CONCERT', 'name': '콘서트'};
      final dto = SellCategoryRespDto.fromJson(json);

      expect(dto.categoryId, 1);
      expect(dto.code, 'CONCERT');
      expect(dto.name, '콘서트');
    });

    test('toEntity()가 올바른 SellCategoryEntity를 반환한다', () {
      const dto = SellCategoryRespDto(
        categoryId: 2,
        code: 'MUSICAL',
        name: '뮤지컬',
      );
      final entity = dto.toEntity();

      expect(entity, isA<SellCategoryEntity>());
      expect(entity.categoryId, 2);
      expect(entity.code, 'MUSICAL');
      expect(entity.name, '뮤지컬');
    });
  });

  group('SellEventRespDto', () {
    test('fromJson 파싱이 올바르게 동작한다', () {
      final json = {
        'eventId': 10,
        'title': '아이유 콘서트',
        'posterImageUrl': 'https://example.com/poster.jpg',
        'venueName': '올림픽공원',
        'startAt': '2025-05-01T18:00:00',
        'endAt': '2025-05-01T21:00:00',
      };
      final dto = SellEventRespDto.fromJson(json);

      expect(dto.eventId, 10);
      expect(dto.title, '아이유 콘서트');
      expect(dto.posterImageUrl, 'https://example.com/poster.jpg');
      expect(dto.venueName, '올림픽공원');
    });

    test('toEntity()가 DateTime을 올바르게 파싱한다', () {
      const dto = SellEventRespDto(
        eventId: 5,
        title: '방탄소년단',
        venueName: '잠실종합운동장',
        startAt: '2025-06-15T19:00:00',
        endAt: '2025-06-15T22:00:00',
      );
      final entity = dto.toEntity();

      expect(entity, isA<SellEventEntity>());
      expect(entity.eventId, 5);
      expect(entity.title, '방탄소년단');
      expect(entity.venueName, '잠실종합운동장');
      expect(entity.startAt, DateTime.parse('2025-06-15T19:00:00'));
      expect(entity.endAt, DateTime.parse('2025-06-15T22:00:00'));
      expect(entity.posterImageUrl, isNull);
    });

    test('SellEventsPageRespDto fromJson이 기본값을 올바르게 처리한다', () {
      final json = {'events': <dynamic>[]};
      final dto = SellEventsPageRespDto.fromJson(json);

      expect(dto.events, isEmpty);
      expect(dto.totalCount, 0);
      expect(dto.currentPage, 1);
      expect(dto.pageSize, 20);
      expect(dto.totalPages, 1);
    });
  });

  group('SellTradeMethodRespDto', () {
    test('fromJson 파싱이 올바르게 동작한다', () {
      final json = {
        'id': 1,
        'code': 'DIRECT',
        'nameKo': '직거래',
        'nameEn': 'Direct',
        'description': '직접 만나서 거래',
      };
      final dto = SellTradeMethodRespDto.fromJson(json);

      expect(dto.id, 1);
      expect(dto.code, 'DIRECT');
      expect(dto.nameKo, '직거래');
      expect(dto.nameEn, 'Direct');
      expect(dto.description, '직접 만나서 거래');
    });

    test('toEntity()가 올바른 SellTradeMethodEntity를 반환한다', () {
      const dto = SellTradeMethodRespDto(
        id: 2,
        code: 'ONLINE',
        nameKo: '온라인 거래',
      );
      final entity = dto.toEntity();

      expect(entity.id, 2);
      expect(entity.code, 'ONLINE');
      expect(entity.nameKo, '온라인 거래');
      expect(entity.nameEn, isNull);
      expect(entity.description, isNull);
    });
  });

  group('SellFeatureRespDto', () {
    test('fromJson 파싱이 올바르게 동작한다', () {
      final json = {'id': 3, 'code': 'SEAT_TOGETHER', 'nameKo': '연석'};
      final dto = SellFeatureRespDto.fromJson(json);

      expect(dto.id, 3);
      expect(dto.code, 'SEAT_TOGETHER');
      expect(dto.nameKo, '연석');
    });

    test('toEntity()가 올바른 SellFeatureEntity를 반환한다', () {
      const dto = SellFeatureRespDto(id: 4, code: 'AISLE_SEAT', nameKo: '통로석');
      final entity = dto.toEntity();

      expect(entity.id, 4);
      expect(entity.code, 'AISLE_SEAT');
      expect(entity.nameKo, '통로석');
    });
  });

  group('SellScheduleRespDto', () {
    test('fromJson 파싱이 올바르게 동작한다', () {
      final json = {
        'scheduleId': 'SCH-001',
        'date': '2025-05-01',
        'time': '18:00',
        'dayOfWeek': '목',
      };
      final dto = SellScheduleRespDto.fromJson(json);

      expect(dto.scheduleId, 'SCH-001');
      expect(dto.date, '2025-05-01');
      expect(dto.time, '18:00');
      expect(dto.dayOfWeek, '목');
    });

    test('toEntity()가 올바른 SellScheduleEntity를 반환한다', () {
      const dto = SellScheduleRespDto(
        scheduleId: 'SCH-002',
        date: '2025-05-02',
        time: '19:30',
        dayOfWeek: '금',
      );
      final entity = dto.toEntity();

      expect(entity.scheduleId, 'SCH-002');
      expect(entity.date, '2025-05-02');
      expect(entity.time, '19:30');
      expect(entity.dayOfWeek, '금');
    });
  });

  group('Domain Entities', () {
    test('SellCategoryEntity copyWith가 올바르게 동작한다', () {
      const original = SellCategoryEntity(
        categoryId: 1,
        code: 'CONCERT',
        name: '콘서트',
      );
      final updated = original.copyWith(name: '공연');

      expect(updated.categoryId, 1);
      expect(updated.code, 'CONCERT');
      expect(updated.name, '공연');
    });

    test('SellEventEntity 동등성(equality)이 올바르게 동작한다', () {
      final start = DateTime(2025, 5, 1, 18);
      final end = DateTime(2025, 5, 1, 21);
      final entity1 = SellEventEntity(
        eventId: 1,
        title: '콘서트',
        venueName: '올림픽공원',
        startAt: start,
        endAt: end,
      );
      final entity2 = SellEventEntity(
        eventId: 1,
        title: '콘서트',
        venueName: '올림픽공원',
        startAt: start,
        endAt: end,
      );

      expect(entity1, equals(entity2));
    });

    test('SellEventsPageEntity가 올바르게 생성된다', () {
      final page = SellEventsPageEntity(
        events: const [],
        totalCount: 100,
        currentPage: 1,
        pageSize: 20,
        totalPages: 5,
      );

      expect(page.events, isEmpty);
      expect(page.totalCount, 100);
      expect(page.totalPages, 5);
    });

    test('SellSeatOptionsEntity가 올바르게 생성된다', () {
      const options = SellSeatOptionsEntity(
        grades: [
          SellSeatGradeEntity(gradeId: 1, code: 'VIP', gradeName: 'VIP석'),
        ],
        locations: [SellSeatLocationEntity(locationId: 1, locationName: '1층')],
        areas: [],
        allowCustomLocation: true,
      );

      expect(options.grades.length, 1);
      expect(options.grades.first.gradeName, 'VIP석');
      expect(options.locations.length, 1);
      expect(options.areas, isEmpty);
      expect(options.allowCustomLocation, isTrue);
    });

    test('TicketImageEntity가 올바르게 생성된다', () {
      final expiresAt = DateTime(2025, 6, 1);
      final entity = TicketImageEntity(
        imageId: 1,
        imageUrl: 'https://example.com/image.jpg',
        expiresAt: expiresAt,
      );

      expect(entity.imageId, 1);
      expect(entity.imageUrl, 'https://example.com/image.jpg');
      expect(entity.expiresAt, expiresAt);
    });

    test('SellTicketCancelResult가 올바르게 생성된다', () {
      const result = SellTicketCancelResult(
        ticketId: 42,
        status: 'CANCELLED',
        message: '티켓이 취소되었습니다.',
      );

      expect(result.ticketId, 42);
      expect(result.status, 'CANCELLED');
      expect(result.message, '티켓이 취소되었습니다.');
    });
  });
}
