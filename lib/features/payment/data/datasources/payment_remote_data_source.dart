import 'package:dio/dio.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/network/safe_api_call.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/payment/data/dto/request/payment_confirm_req_dto.dart';
import 'package:ticket_platform_mobile/features/payment/data/dto/request/payment_request_req_dto.dart';
import 'package:ticket_platform_mobile/features/payment/data/dto/response/payment_confirm_resp_dto.dart';
import 'package:ticket_platform_mobile/features/payment/data/dto/response/payment_request_resp_dto.dart';

abstract class PaymentRemoteDataSource {
  Future<BaseResponse<PaymentRequestRespDto>> requestPayment(
    PaymentRequestReqDto req,
  );
  Future<BaseResponse<PaymentConfirmRespDto>> confirmPayment(
    PaymentConfirmReqDto req,
  );
  Future<BaseResponse<bool>> cancelPayment(int transactionId, String reason);
}

class PaymentRemoteDataSourceImpl implements PaymentRemoteDataSource {
  final Dio _dio;

  PaymentRemoteDataSourceImpl(this._dio);

  @override
  Future<BaseResponse<PaymentRequestRespDto>> requestPayment(
    PaymentRequestReqDto req,
  ) async {
    AppLogger.d('[RemoteDataSource] requestPayment: ${req.toMap()}');
    return safeApiCall<PaymentRequestRespDto>(
      apiCall: (options) => _dio.post(
        ApiEndpoint.paymentReq,
        data: req.toMap(),
        options: options,
      ),
      apiName: 'requestPayment',
      dataParser: (json) =>
          PaymentRequestRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<PaymentConfirmRespDto>> confirmPayment(
    PaymentConfirmReqDto req,
  ) async {
    AppLogger.d('[RemoteDataSource] confirmPayment: ${req.toMap()}');
    return safeApiCall<PaymentConfirmRespDto>(
      apiCall: (options) => _dio.post(
        ApiEndpoint.paymentConfirm,
        data: req.toMap(),
        options: options,
      ),
      apiName: 'confirmPayment',
      dataParser: (json) =>
          PaymentConfirmRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<bool>> cancelPayment(
    int transactionId,
    String reason,
  ) async {
    AppLogger.d(
      '[RemoteDataSource] cancelPayment: $transactionId, reason: $reason',
    );
    return safeApiCall<bool>(
      apiCall: (options) => _dio.post(
        ApiEndpoint.paymentCancel,
        data: {'transactionId': transactionId, 'cancelReason': reason},
        options: options,
      ),
      apiName: 'cancelPayment',
      dataParser: (json) => json as bool? ?? false,
    );
  }
}
