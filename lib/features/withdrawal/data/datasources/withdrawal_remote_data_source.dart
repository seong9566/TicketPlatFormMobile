import 'package:dio/dio.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/network/safe_api_call.dart';
import 'package:ticket_platform_mobile/features/withdrawal/data/dto/request/withdrawal_req_dto.dart';
import 'package:ticket_platform_mobile/features/withdrawal/data/dto/response/balance_history_resp_dto.dart';
import 'package:ticket_platform_mobile/features/withdrawal/data/dto/response/balance_resp_dto.dart';
import 'package:ticket_platform_mobile/features/withdrawal/data/dto/response/withdrawal_history_resp_dto.dart';
import 'package:ticket_platform_mobile/features/withdrawal/data/dto/response/withdrawal_resp_dto.dart';

abstract class WithdrawalRemoteDataSource {
  Future<BaseResponse<BalanceRespDto>> getBalance();

  Future<BaseResponse<BalanceHistoryRespDto>> getBalanceHistory({
    int page = 1,
    int pageSize = 20,
  });

  Future<BaseResponse<WithdrawalRespDto>> requestWithdrawal(
    WithdrawalReqDto req,
  );

  Future<BaseResponse<WithdrawalHistoryRespDto>> getWithdrawalHistory({
    int page = 1,
    int pageSize = 20,
  });

  Future<BaseResponse<WithdrawalRespDto>> cancelWithdrawal(int withdrawalId);
}

class WithdrawalRemoteDataSourceImpl implements WithdrawalRemoteDataSource {
  final Dio _dio;

  WithdrawalRemoteDataSourceImpl(this._dio);

  @override
  Future<BaseResponse<BalanceRespDto>> getBalance() async {
    return safeApiCall<BalanceRespDto>(
      apiCall: (options) => _dio.get(ApiEndpoint.balance, options: options),
      apiName: 'getBalance',
      dataParser: (json) =>
          BalanceRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<BalanceHistoryRespDto>> getBalanceHistory({
    int page = 1,
    int pageSize = 20,
  }) async {
    return safeApiCall<BalanceHistoryRespDto>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.balanceHistory,
        queryParameters: {'page': page, 'pageSize': pageSize},
        options: options,
      ),
      apiName: 'getBalanceHistory',
      dataParser: (json) =>
          BalanceHistoryRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<WithdrawalRespDto>> requestWithdrawal(
    WithdrawalReqDto req,
  ) async {
    return safeApiCall<WithdrawalRespDto>(
      apiCall: (options) => _dio.post(
        ApiEndpoint.withdrawal,
        data: req.toMap(),
        options: Options(
          headers: {'X-Idempotency-Key': req.idempotencyKey},
          extra: options.extra,
        ),
      ),
      apiName: 'requestWithdrawal',
      dataParser: (json) =>
          WithdrawalRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<WithdrawalHistoryRespDto>> getWithdrawalHistory({
    int page = 1,
    int pageSize = 20,
  }) async {
    return safeApiCall<WithdrawalHistoryRespDto>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.withdrawalHistory,
        queryParameters: {'page': page, 'pageSize': pageSize},
        options: options,
      ),
      apiName: 'getWithdrawalHistory',
      dataParser: (json) =>
          WithdrawalHistoryRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<WithdrawalRespDto>> cancelWithdrawal(
    int withdrawalId,
  ) async {
    return safeApiCall<WithdrawalRespDto>(
      apiCall: (options) => _dio.post(
        ApiEndpoint.withdrawalCancel(withdrawalId),
        options: options,
      ),
      apiName: 'cancelWithdrawal',
      dataParser: (json) =>
          WithdrawalRespDto.fromJson(json as Map<String, dynamic>),
    );
  }
}
