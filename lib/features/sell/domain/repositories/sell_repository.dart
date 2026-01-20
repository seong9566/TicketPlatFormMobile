import 'dart:io';

import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_category_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_event_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_feature_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_schedule_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_seat_option_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_ticket_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_trade_method_entity.dart';

abstract class SellRepository {
  /// 카테고리 목록 조회
  Future<List<SellCategoryEntity>> getCategories();

  /// 공연 목록 조회
  Future<SellEventsPageEntity> getEvents({
    required int categoryId,
    String? keyword,
    int page = 1,
    int size = 20,
  });

  /// 공연 일정 조회
  Future<List<SellScheduleEntity>> getSchedules(int eventId);

  /// 좌석 옵션 조회
  Future<SellSeatOptionsEntity> getSeatOptions(int eventId);

  /// 특이사항 목록 조회
  Future<List<SellFeatureEntity>> getFeatures();

  /// 거래 방식 목록 조회
  Future<List<SellTradeMethodEntity>> getTradeMethods();

  /// 좌석 정가 조회
  Future<int?> getOriginalPrice({
    required int eventId,
    required int gradeId,
    int? locationId,
    int? areaId,
  });

  /// 티켓 등록
  Future<SellTicketRegisterResult> registerTicket({
    required int eventId,
    required String scheduleId,
    required int seatGradeId,
    int? locationId,
    int? areaId,
    String? row,
    required int quantity,
    bool isConsecutive = false,
    required int price,
    required int originalPrice,
    required int tradeMethodId,
    required bool hasTicket,
    String? description,
    List<File> images = const [],
    List<int> featureIds = const [],
  });

  /// 내 티켓 목록 조회
  Future<SellMyTicketsPageEntity> getMyTickets({
    String? status,
    int page = 1,
    int size = 20,
  });

  /// 티켓 취소
  Future<SellTicketCancelResult> cancelTicket(int ticketId);

  /// 티켓 이미지 URL 재발급
  Future<List<TicketImageEntity>> refreshTicketImageUrls(int ticketId);
}
