import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/network/dio_provider.dart';
import 'package:ticket_platform_mobile/core/network/safe_api_call.dart';
import 'package:ticket_platform_mobile/features/profile/data/dto/response/my_profile_resp_dto.dart';

part 'profile_remote_data_source.g.dart';

/// Profile RemoteDataSource Interface
abstract class ProfileRemoteDataSource {
  Future<BaseResponse<MyProfileRespDto>> getMyProfile();
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
}

@riverpod
ProfileRemoteDataSource profileRemoteDataSource(Ref ref) {
  return ProfileRemoteDataSourceImpl(ref.read(dioProvider));
}
