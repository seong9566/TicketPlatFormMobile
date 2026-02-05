import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/network/dio_provider.dart';
import 'package:ticket_platform_mobile/core/network/safe_api_call.dart';
import 'package:ticket_platform_mobile/features/profile/data/dto/request/transaction_history_req_dto.dart';
import 'package:ticket_platform_mobile/features/profile/data/dto/response/transaction_list_resp_dto.dart';

part 'transaction_remote_data_source.g.dart';

abstract class TransactionRemoteDataSource {
  Future<BaseResponse<TransactionListRespDto>> getSalesHistory(
    TransactionHistoryReqDto reqDto,
  );

  Future<BaseResponse<TransactionListRespDto>> getPurchasesHistory(
    TransactionHistoryReqDto reqDto,
  );
}

class TransactionRemoteDataSourceImpl implements TransactionRemoteDataSource {
  final Dio _dio;

  TransactionRemoteDataSourceImpl(this._dio);

  @override
  Future<BaseResponse<TransactionListRespDto>> getSalesHistory(
    TransactionHistoryReqDto reqDto,
  ) async {
    return safeApiCall<TransactionListRespDto>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.salesHistory,
        queryParameters: reqDto.toMap(),
        options: options,
      ),
      apiName: 'getSalesHistory',
      dataParser: (json) =>
          TransactionListRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<TransactionListRespDto>> getPurchasesHistory(
    TransactionHistoryReqDto reqDto,
  ) async {
    return safeApiCall<TransactionListRespDto>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.purchasesHistory,
        queryParameters: reqDto.toMap(),
        options: options,
      ),
      apiName: 'getPurchasesHistory',
      dataParser: (json) =>
          TransactionListRespDto.fromJson(json as Map<String, dynamic>),
    );
  }
}

@riverpod
TransactionRemoteDataSource transactionRemoteDataSource(Ref ref) {
  return TransactionRemoteDataSourceImpl(ref.read(dioProvider));
}
