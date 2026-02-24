import 'package:dio/dio.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/network/safe_api_call.dart';
import 'package:ticket_platform_mobile/features/reputation/data/dto/request/create_reputation_req_dto.dart';
import 'package:ticket_platform_mobile/features/reputation/data/dto/response/reputation_check_resp_dto.dart';

abstract class ReputationRemoteDataSource {
  Future<BaseResponse<void>> createReputation(CreateReputationReqDto req);

  Future<BaseResponse<ReputationCheckRespDto>> checkReputation(
    int transactionId,
  );
}

class ReputationRemoteDataSourceImpl implements ReputationRemoteDataSource {
  ReputationRemoteDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<BaseResponse<void>> createReputation(
    CreateReputationReqDto req,
  ) async {
    return safeApiCall<void>(
      apiCall: (options) => _dio.post(
        ApiEndpoint.reputations,
        data: req.toMap(),
        options: options,
      ),
      apiName: 'createReputation',
      dataParser: (_) {},
    );
  }

  @override
  Future<BaseResponse<ReputationCheckRespDto>> checkReputation(
    int transactionId,
  ) async {
    return safeApiCall<ReputationCheckRespDto>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.reputationCheck(transactionId),
        options: options,
      ),
      apiName: 'checkReputation',
      dataParser: (json) =>
          ReputationCheckRespDto.fromJson(json as Map<String, dynamic>),
    );
  }
}
