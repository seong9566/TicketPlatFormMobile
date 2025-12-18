import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/network/dio_provider.dart';
import 'package:ticket_platform_mobile/core/network/safe_api_call.dart';
import 'package:ticket_platform_mobile/features/home/data/dto/response/home_resp_dto.dart';

part 'home_remote_data_source.g.dart';

abstract class HomeRemoteDataSource {
  Future<BaseResponse<HomeRespDto>> getHomeData();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  HomeRemoteDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<BaseResponse<HomeRespDto>> getHomeData() async {
    return safeApiCall<HomeRespDto>(
      apiCall: () => _dio.get(ApiEndpoint.home),
      apiName: 'getHomeData',
      dataParser: HomeRespDto.fromJson,
    );
  }
}

@riverpod
HomeRemoteDataSource homeRemoteDataSource(Ref ref) {
  return HomeRemoteDataSourceImpl(ref.watch(dioProvider));
}
