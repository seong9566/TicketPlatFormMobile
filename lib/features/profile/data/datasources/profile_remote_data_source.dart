import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/network/dio_provider.dart';
import 'package:ticket_platform_mobile/core/network/safe_api_call.dart';
import 'package:ticket_platform_mobile/features/profile/data/dto/request/update_profile_req_dto.dart';
import 'package:ticket_platform_mobile/features/profile/data/dto/response/image_refresh_resp_dto.dart';
import 'package:ticket_platform_mobile/features/profile/data/dto/response/my_profile_resp_dto.dart';

part 'profile_remote_data_source.g.dart';

/// Profile RemoteDataSource Interface
abstract class ProfileRemoteDataSource {
  /// 내 프로필 조회
  Future<BaseResponse<MyProfileRespDto>> getMyProfile();

  /// 내 프로필 수정
  Future<BaseResponse<MyProfileRespDto>> updateMyProfile(
    UpdateProfileReqDto reqDto,
  );

  /// 다른 사용자 프로필 조회
  Future<BaseResponse<MyProfileRespDto>> getUserProfile(int userId);

  /// 프로필 이미지 URL 갱신
  Future<BaseResponse<ImageRefreshRespDto>> refreshProfileImageUrl({
    int? userId,
  });
}

/// Profile RemoteDataSource Implementation
class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final Dio _dio;

  ProfileRemoteDataSourceImpl(this._dio);

  @override
  Future<BaseResponse<MyProfileRespDto>> getMyProfile() async {
    return safeApiCall<MyProfileRespDto>(
      apiCall: (options) => _dio.get(ApiEndpoint.myProfile, options: options),
      apiName: 'getMyProfile',
      dataParser: (json) =>
          MyProfileRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<MyProfileRespDto>> updateMyProfile(
    UpdateProfileReqDto reqDto,
  ) async {
    final formData = await reqDto.toFormData();
    return safeApiCall<MyProfileRespDto>(
      apiCall: (options) =>
          _dio.put(ApiEndpoint.myProfile, data: formData, options: options),
      apiName: 'updateMyProfile',
      dataParser: (json) =>
          MyProfileRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<MyProfileRespDto>> getUserProfile(int userId) async {
    return safeApiCall<MyProfileRespDto>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.userProfile(userId),
        queryParameters: {'userId': userId},
        options: options,
      ),
      apiName: 'getUserProfile',
      dataParser: (json) =>
          MyProfileRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<ImageRefreshRespDto>> refreshProfileImageUrl({
    int? userId,
  }) async {
    return safeApiCall<ImageRefreshRespDto>(
      apiCall: (options) => _dio.post(
        ApiEndpoint.profileImageRefresh,
        data: userId != null ? {'userId': userId} : {},
        options: options,
      ),
      apiName: 'refreshProfileImageUrl',
      dataParser: (json) =>
          ImageRefreshRespDto.fromJson(json as Map<String, dynamic>),
    );
  }
}

@riverpod
ProfileRemoteDataSource profileRemoteDataSource(Ref ref) {
  return ProfileRemoteDataSourceImpl(ref.read(dioProvider));
}
