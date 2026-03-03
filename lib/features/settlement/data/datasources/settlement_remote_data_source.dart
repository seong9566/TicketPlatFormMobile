import 'package:dio/dio.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/network/safe_api_call.dart';
import 'package:ticket_platform_mobile/features/settlement/data/dto/response/settlement_detail_resp_dto.dart';
import 'package:ticket_platform_mobile/features/settlement/data/dto/response/settlement_list_resp_dto.dart';

abstract class SettlementRemoteDataSource {
  Future<BaseResponse<SettlementListRespDto>> getSettlements({
    int page = 1,
    int size = 20,
    String? status,
  });

  Future<BaseResponse<SettlementDetailRespDto>> getSettlementDetail(
    int settlementId,
  );
}

class SettlementRemoteDataSourceImpl implements SettlementRemoteDataSource {
  final Dio _dio;

  SettlementRemoteDataSourceImpl(this._dio);

  @override
  Future<BaseResponse<SettlementListRespDto>> getSettlements({
    int page = 1,
    int size = 20,
    String? status,
  }) async {
    final queryParams = <String, dynamic>{
      'page': page,
      'size': size,
      if (status != null) 'status': status,
    };

    return safeApiCall<SettlementListRespDto>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.settlements,
        queryParameters: queryParams,
        options: options,
      ),
      apiName: 'getSettlements',
      dataParser: (json) =>
          SettlementListRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<SettlementDetailRespDto>> getSettlementDetail(
    int settlementId,
  ) async {
    return safeApiCall<SettlementDetailRespDto>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.settlementDetail(settlementId),
        options: options,
      ),
      apiName: 'getSettlementDetail',
      dataParser: (json) =>
          SettlementDetailRespDto.fromJson(json as Map<String, dynamic>),
    );
  }
}
