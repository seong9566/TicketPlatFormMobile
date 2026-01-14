import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/features/sell/data/datasources/sell_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/sell/data/dto/request/sell_req_dto.dart';
import 'package:ticket_platform_mobile/features/sell/data/dto/response/sell_category_resp_dto.dart';
import 'package:ticket_platform_mobile/features/sell/data/dto/response/sell_event_resp_dto.dart';
import 'package:ticket_platform_mobile/features/sell/data/dto/response/sell_schedule_resp_dto.dart';
import 'package:ticket_platform_mobile/features/sell/data/dto/response/sell_seat_option_resp_dto.dart';
import 'package:ticket_platform_mobile/features/sell/data/dto/response/sell_ticket_resp_dto.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_category_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_event_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_schedule_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_seat_option_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_ticket_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/repositories/sell_repository.dart';

part 'sell_repository_impl.g.dart';

class SellRepositoryImpl implements SellRepository {
  SellRepositoryImpl(this._remoteDataSource);

  final SellRemoteDataSource _remoteDataSource;

  @override
  Future<List<SellCategoryEntity>> getCategories() async {
    final response = await _remoteDataSource.getCategories();
    return response.mapListOrEmpty((dto) => dto.toEntity());
  }

  @override
  Future<SellEventsPageEntity> getEvents({
    required int categoryId,
    String? keyword,
    int page = 1,
    int size = 20,
  }) async {
    final reqDto = SellEventsReqDto(
      categoryId: categoryId,
      keyword: keyword,
      page: page,
      size: size,
    );
    final response = await _remoteDataSource.getEvents(reqDto);
    return response.mapOrThrow((data) {
      // 서버에서 totalCount를 제공하지 않으면 events 길이 사용
      final eventsList = data.events.map((dto) => dto.toEntity()).toList();
      final count = data.totalCount > 0 ? data.totalCount : eventsList.length;

      return SellEventsPageEntity(
        events: eventsList,
        totalCount: count,
        currentPage: data.currentPage,
        pageSize: data.pageSize,
        totalPages: data.totalPages > 0 ? data.totalPages : 1,
      );
    }, errorMessage: '공연 목록을 불러오는데 실패했습니다.');
  }

  @override
  Future<List<SellScheduleEntity>> getSchedules(int eventId) async {
    final response = await _remoteDataSource.getSchedules(eventId);
    return response.mapOrThrow(
      (data) => data.schedules.map((dto) => dto.toEntity()).toList(),
      errorMessage: '공연 일정을 불러오는데 실패했습니다.',
    );
  }

  @override
  Future<SellSeatOptionsEntity> getSeatOptions(int eventId) async {
    final response = await _remoteDataSource.getSeatOptions(eventId);
    return response.mapOrThrow(
      (dto) => dto.toEntity(),
      errorMessage: '좌석 옵션을 불러오는데 실패했습니다.',
    );
  }

  @override
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
  }) async {
    final reqDto = SellTicketRegisterReqDto(
      eventId: eventId,
      scheduleId: scheduleId,
      locationId: locationId,
      area: area,
      row: row,
      seatInfo: seatInfo,
      isConsecutive: isConsecutive,
      quantity: quantity,
      price: price,
      originalPrice: originalPrice,
      description: description,
      images: images,
    );
    final response = await _remoteDataSource.registerTicket(reqDto);
    return response.mapOrThrow(
      (data) => SellTicketRegisterResult(
        ticketId: data.ticketId,
        status: data.status,
        message: data.message,
      ),
      errorMessage: '티켓 등록에 실패했습니다.',
    );
  }

  @override
  Future<SellMyTicketsPageEntity> getMyTickets({
    String? status,
    int page = 1,
    int size = 20,
  }) async {
    final reqDto = SellMyTicketsReqDto(status: status, page: page, size: size);
    final response = await _remoteDataSource.getMyTickets(reqDto);
    return response.mapOrThrow(
      (data) => SellMyTicketsPageEntity(
        tickets: data.tickets.map((dto) => dto.toEntity()).toList(),
        totalCount: data.totalCount,
        currentPage: data.currentPage,
        pageSize: data.pageSize,
        totalPages: data.totalPages,
      ),
      errorMessage: '내 티켓 목록을 불러오는데 실패했습니다.',
    );
  }

  @override
  Future<SellTicketCancelResult> cancelTicket(int ticketId) async {
    final response = await _remoteDataSource.cancelTicket(ticketId);
    return response.mapOrThrow(
      (data) => SellTicketCancelResult(
        ticketId: data.ticketId,
        status: data.status,
        message: data.message,
      ),
      errorMessage: '티켓 취소에 실패했습니다.',
    );
  }
}

@riverpod
SellRepository sellRepository(Ref ref) {
  return SellRepositoryImpl(ref.watch(sellRemoteDataSourceProvider));
}
