import 'dart:io';

import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_category_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_event_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_schedule_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_seat_option_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_ticket_entity.dart';

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

  /// 티켓 등록
  Future<SellTicketRegisterResult> registerTicket({
    required int eventId,
    required String scheduleId,
    String? locationId,
    String? area,
    String? row,
    required String seatInfo,
    bool isConsecutive = false,
    required int quantity,
    required int price,
    required int originalPrice,
    String? description,
    List<File> images = const [],
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
