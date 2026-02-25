import 'package:dio/dio.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/network/safe_api_call.dart';
import 'package:ticket_platform_mobile/features/bank_account/data/dto/request/register_bank_account_req_dto.dart';
import 'package:ticket_platform_mobile/features/bank_account/data/dto/request/verify_account_req_dto.dart';
import 'package:ticket_platform_mobile/features/bank_account/data/dto/response/bank_account_resp_dto.dart';
import 'package:ticket_platform_mobile/features/bank_account/data/dto/response/request_verification_resp_dto.dart';
import 'package:ticket_platform_mobile/features/bank_account/data/dto/response/verify_account_resp_dto.dart';

abstract class BankAccountRemoteDataSource {
  Future<BaseResponse<BankAccountRespDto>> registerBankAccount(
    RegisterBankAccountReqDto request,
  );

  Future<BaseResponse<BankAccountRespDto?>> getMyBankAccount();

  Future<BaseResponse<void>> deleteBankAccount();

  Future<BaseResponse<RequestVerificationRespDto>> requestVerification();

  Future<BaseResponse<VerifyAccountRespDto>> confirmVerification(
    VerifyAccountReqDto request,
  );
}

class BankAccountRemoteDataSourceImpl implements BankAccountRemoteDataSource {
  BankAccountRemoteDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<BaseResponse<BankAccountRespDto>> registerBankAccount(
    RegisterBankAccountReqDto request,
  ) {
    return safeApiCall<BankAccountRespDto>(
      apiCall: (options) => _dio.post(
        ApiEndpoint.bankAccount,
        data: request.toJson(),
        options: options,
      ),
      apiName: 'registerBankAccount',
      dataParser: (json) =>
          BankAccountRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<BankAccountRespDto?>> getMyBankAccount() {
    return safeApiCall<BankAccountRespDto?>(
      apiCall: (options) =>
          _dio.get(ApiEndpoint.bankAccountMe, options: options),
      apiName: 'getMyBankAccount',
      dataParser: (json) {
        if (json == null) {
          return null;
        }
        return BankAccountRespDto.fromJson(json as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<BaseResponse<void>> deleteBankAccount() {
    return safeApiCall<void>(
      apiCall: (options) =>
          _dio.delete(ApiEndpoint.bankAccount, options: options),
      apiName: 'deleteBankAccount',
      dataParser: (_) {},
    );
  }

  @override
  Future<BaseResponse<RequestVerificationRespDto>> requestVerification() {
    return safeApiCall<RequestVerificationRespDto>(
      apiCall: (options) =>
          _dio.post(ApiEndpoint.bankAccountVerifyRequest, options: options),
      apiName: 'requestVerification',
      dataParser: (json) =>
          RequestVerificationRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<VerifyAccountRespDto>> confirmVerification(
    VerifyAccountReqDto request,
  ) {
    return safeApiCall<VerifyAccountRespDto>(
      apiCall: (options) => _dio.post(
        ApiEndpoint.bankAccountVerifyConfirm,
        data: request.toJson(),
        options: options,
      ),
      apiName: 'confirmVerification',
      dataParser: (json) =>
          VerifyAccountRespDto.fromJson(json as Map<String, dynamic>),
    );
  }
}
