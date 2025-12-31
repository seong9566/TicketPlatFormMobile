import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/network/dio_provider.dart';
import 'package:ticket_platform_mobile/core/network/safe_api_call.dart';
import 'package:ticket_platform_mobile/features/ticketing/data/dto/response/ticketing_resp_dto.dart';

part 'ticketing_remote_data_source.g.dart';

abstract class TicketingRemoteDataSource {
  Future<BaseResponse<TicketingRespDto>> getTicketingInfo(int eventId);
  Future<BaseResponse<TicketingTicketRespDto>> getTicketDetail(int ticketId);
}

class TicketingRemoteDataSourceImpl implements TicketingRemoteDataSource {
  final Dio _dio;

  TicketingRemoteDataSourceImpl(this._dio);

  @override
  Future<BaseResponse<TicketingRespDto>> getTicketingInfo(int eventId) async {
    return safeApiCall<TicketingRespDto>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.eventTickets,
        queryParameters: {'eventId': eventId},
        options: options,
      ),
      apiName: 'getTicketingInfo',
      dataParser: (json) =>
          TicketingRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<TicketingTicketRespDto>> getTicketDetail(
    int ticketId,
  ) async {
    return safeApiCall<TicketingTicketRespDto>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.ticketDetail,
        queryParameters: {'ticketId': ticketId},
        options: options,
      ),
      apiName: 'getTicketDetail',
      dataParser: (json) =>
          TicketingTicketRespDto.fromJson(json as Map<String, dynamic>),
    );
  }
}

@riverpod
TicketingRemoteDataSource ticketingRemoteDataSource(Ref ref) {
  return TicketingRemoteDataSourceImpl(ref.watch(dioProvider));
}
