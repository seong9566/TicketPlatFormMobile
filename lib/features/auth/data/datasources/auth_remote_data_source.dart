import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/network/dio_provider.dart';
import 'package:ticket_platform_mobile/core/network/safe_api_call.dart';
import 'package:ticket_platform_mobile/features/auth/data/dto/request/auth_req_dto.dart';
import 'package:ticket_platform_mobile/features/auth/data/dto/request/social_login_req_dto.dart';
import 'package:ticket_platform_mobile/features/auth/data/dto/response/auth_resp_dto.dart';

part 'auth_remote_data_source.g.dart';

abstract class AuthRemoteDataSource {
  Future<BaseResponse<AuthRespDto>> login(LoginReqDto req);
  Future<BaseResponse<AuthRespDto>> socialLogin(SocialLoginReqDto req);
  Future<BaseResponse<SignUpRespDto>> signUp(SignUpReqDto req);
  Future<BaseResponse<void>> logout();
  Future<BaseResponse<TokenRespDto>> refreshToken(String refreshToken);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio _dio;

  AuthRemoteDataSourceImpl(this._dio);

  @override
  Future<BaseResponse<AuthRespDto>> login(LoginReqDto req) async {
    return safeApiCall<AuthRespDto>(
      apiCall: (options) =>
          _dio.post(ApiEndpoint.login, data: req.toMap(), options: options),
      apiName: 'login',
      dataParser: (json) => AuthRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<AuthRespDto>> socialLogin(SocialLoginReqDto req) async {
    return safeApiCall<AuthRespDto>(
      apiCall: (options) => _dio.post(
        ApiEndpoint.socialLogin,
        data: req.toMap(),
        options: options,
      ),
      apiName: 'socialLogin',
      dataParser: (json) => AuthRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<SignUpRespDto>> signUp(SignUpReqDto req) async {
    return safeApiCall<SignUpRespDto>(
      apiCall: (options) =>
          _dio.post(ApiEndpoint.signup, data: req.toMap(), options: options),
      apiName: 'signUp',
      dataParser: (json) =>
          SignUpRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<void>> logout() async {
    return safeApiCall<void>(
      apiCall: (options) => _dio.post(ApiEndpoint.logout, options: options),
      apiName: 'logout',
      dataParser: (_) {},
    );
  }

  @override
  Future<BaseResponse<TokenRespDto>> refreshToken(String refreshToken) async {
    return safeApiCall<TokenRespDto>(
      apiCall: (options) => _dio.post(
        ApiEndpoint.tokenRefresh, // /api/auth/refresh
        data: {'refreshToken': refreshToken},
        options: options,
      ),
      apiName: 'refreshToken',
      dataParser: (json) => TokenRespDto.fromJson(json as Map<String, dynamic>),
    );
  }
}

@riverpod
AuthRemoteDataSource authRemoteDataSource(Ref ref) {
  return AuthRemoteDataSourceImpl(ref.watch(dioProvider));
}
