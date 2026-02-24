import 'package:dio/dio.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/network/safe_api_call.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/data/dto/response/sales_dashboard_resp_dto.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/data/dto/response/event_ticket_list_resp_dto.dart';

abstract class SalesDashboardRemoteDataSource {
  Future<BaseResponse<SalesDashboardRespDto>> getSalesDashboard({
    String? status,
    int page = 1,
    int size = 20,
  });

  Future<BaseResponse<EventTicketListRespDto>> getEventTickets({
    required int eventId,
    int page = 1,
    int size = 20,
  });
}

class SalesDashboardRemoteDataSourceImpl
    implements SalesDashboardRemoteDataSource {
  final Dio _dio;

  SalesDashboardRemoteDataSourceImpl(this._dio);

  @override
  Future<BaseResponse<SalesDashboardRespDto>> getSalesDashboard({
    String? status,
    int page = 1,
    int size = 20,
  }) async {
    return safeApiCall<SalesDashboardRespDto>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.salesDashboard,
        queryParameters: {
          if (status != null) 'status': status,
          'page': page,
          'size': size,
        },
        options: options,
      ),
      apiName: 'getSalesDashboard',
      dataParser: (json) =>
          SalesDashboardRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<EventTicketListRespDto>> getEventTickets({
    required int eventId,
    int page = 1,
    int size = 20,
  }) async {
    return safeApiCall<EventTicketListRespDto>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.salesDashboardEventTickets(eventId),
        queryParameters: {'page': page, 'size': size},
        options: options,
      ),
      apiName: 'getEventTickets',
      dataParser: (json) =>
          EventTicketListRespDto.fromJson(json as Map<String, dynamic>),
    );
  }
}
