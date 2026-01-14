import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/network/dio_provider.dart';
import 'package:ticket_platform_mobile/core/network/safe_api_call.dart';
import 'package:ticket_platform_mobile/features/sell/data/dto/request/sell_req_dto.dart';
import 'package:ticket_platform_mobile/features/sell/data/dto/response/sell_category_resp_dto.dart';
import 'package:ticket_platform_mobile/features/sell/data/dto/response/sell_event_resp_dto.dart';
import 'package:ticket_platform_mobile/features/sell/data/dto/response/sell_schedule_resp_dto.dart';
import 'package:ticket_platform_mobile/features/sell/data/dto/response/sell_seat_option_resp_dto.dart';
import 'package:ticket_platform_mobile/features/sell/data/dto/response/sell_ticket_resp_dto.dart';

part 'sell_remote_data_source.g.dart';

abstract class SellRemoteDataSource {
  /// 카테고리 목록 조회
  Future<BaseResponse<List<SellCategoryRespDto>>> getCategories();

  /// 공연 목록 조회
  Future<BaseResponse<SellEventsPageRespDto>> getEvents(SellEventsReqDto req);

  /// 공연 일정 조회
  Future<BaseResponse<SellSchedulesRespDto>> getSchedules(int eventId);

  /// 좌석 옵션 조회
  Future<BaseResponse<SellSeatOptionsRespDto>> getSeatOptions(int eventId);

  /// 티켓 등록
  Future<BaseResponse<SellTicketRegisterRespDto>> registerTicket(
    SellTicketRegisterReqDto req,
  );

  /// 내 티켓 목록 조회
  Future<BaseResponse<SellMyTicketsPageRespDto>> getMyTickets(
    SellMyTicketsReqDto req,
  );

  /// 티켓 취소
  Future<BaseResponse<SellTicketCancelRespDto>> cancelTicket(int ticketId);

  /// 티켓 이미지 URL 재발급
  Future<BaseResponse<TicketImagesRefreshRespDto>> refreshTicketImageUrls(
    int ticketId,
  );
}

class SellRemoteDataSourceImpl implements SellRemoteDataSource {
  SellRemoteDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<BaseResponse<List<SellCategoryRespDto>>> getCategories() async {
    return safeApiCall<List<SellCategoryRespDto>>(
      apiCall: (options) =>
          _dio.get(ApiEndpoint.sellCategories, options: options),
      apiName: 'getCategories',
      dataParser: (json) => (json as List)
          .map((e) => SellCategoryRespDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Future<BaseResponse<SellEventsPageRespDto>> getEvents(
    SellEventsReqDto req,
  ) async {
    return safeApiCall<SellEventsPageRespDto>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.sellEvents,
        queryParameters: req.toMap(),
        options: options,
      ),
      apiName: 'getEvents',
      dataParser: (json) =>
          SellEventsPageRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<SellSchedulesRespDto>> getSchedules(int eventId) async {
    return safeApiCall<SellSchedulesRespDto>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.sellEventSchedules,
        queryParameters: {'eventId': eventId},
        options: options,
      ),
      apiName: 'getSchedules',
      dataParser: (json) =>
          SellSchedulesRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<SellSeatOptionsRespDto>> getSeatOptions(
    int eventId,
  ) async {
    return safeApiCall<SellSeatOptionsRespDto>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.sellSeatOptions,
        queryParameters: {'eventId': eventId},
        options: options,
      ),
      apiName: 'getSeatOptions',
      dataParser: (json) =>
          SellSeatOptionsRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<SellTicketRegisterRespDto>> registerTicket(
    SellTicketRegisterReqDto req,
  ) async {
    final formData = FormData.fromMap(req.toMap());

    // 이미지 파일 추가
    for (var i = 0; i < req.images.length; i++) {
      final file = req.images[i];
      formData.files.add(
        MapEntry(
          'images',
          await MultipartFile.fromFile(
            file.path,
            filename: 'ticket_image_$i.jpg',
          ),
        ),
      );
    }

    return safeApiCall<SellTicketRegisterRespDto>(
      apiCall: (options) => _dio.post(
        ApiEndpoint.sellTickets,
        data: formData,
        options: Options(
          contentType: 'multipart/form-data',
          extra: options.extra,
        ),
      ),
      apiName: 'registerTicket',
      dataParser: (json) =>
          SellTicketRegisterRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<SellMyTicketsPageRespDto>> getMyTickets(
    SellMyTicketsReqDto req,
  ) async {
    return safeApiCall<SellMyTicketsPageRespDto>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.sellMyTickets,
        queryParameters: req.toMap(),
        options: options,
      ),
      apiName: 'getMyTickets',
      dataParser: (json) =>
          SellMyTicketsPageRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<SellTicketCancelRespDto>> cancelTicket(
    int ticketId,
  ) async {
    return safeApiCall<SellTicketCancelRespDto>(
      apiCall: (options) => _dio.delete(
        ApiEndpoint.sellTickets,
        queryParameters: {'ticketId': ticketId},
        options: options,
      ),
      apiName: 'cancelTicket',
      dataParser: (json) =>
          SellTicketCancelRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<TicketImagesRefreshRespDto>> refreshTicketImageUrls(
    int ticketId,
  ) async {
    return safeApiCall<TicketImagesRefreshRespDto>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.sellTicketImageRefresh,
        queryParameters: {'ticketId': ticketId},
        options: options,
      ),
      apiName: 'refreshTicketImageUrls',
      dataParser: (json) =>
          TicketImagesRefreshRespDto.fromJson(json as Map<String, dynamic>),
    );
  }
}

@riverpod
SellRemoteDataSource sellRemoteDataSource(Ref ref) {
  return SellRemoteDataSourceImpl(ref.watch(dioProvider));
}
