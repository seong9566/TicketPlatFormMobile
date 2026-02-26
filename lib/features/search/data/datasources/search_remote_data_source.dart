import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/network/dio_provider.dart';
import 'package:ticket_platform_mobile/core/network/safe_api_call.dart';
import 'package:ticket_platform_mobile/features/search/data/dto/request/search_req_dto.dart';
import 'package:ticket_platform_mobile/features/search/data/dto/response/search_res_dto.dart';

part 'search_remote_data_source.g.dart';

abstract class SearchRemoteDataSource {
  Future<BaseResponse<SearchResDto>> search(SearchReqDto req);
}

class SearchRemoteDataSourceImpl implements SearchRemoteDataSource {
  SearchRemoteDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<BaseResponse<SearchResDto>> search(SearchReqDto req) {
    return safeApiCall<SearchResDto>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.search,
        queryParameters: req.toMap(),
        options: options,
      ),
      apiName: 'search',
      dataParser: (json) => SearchResDto.fromJson(json as Map<String, dynamic>),
    );
  }
}

@riverpod
SearchRemoteDataSource searchRemoteDataSource(Ref ref) {
  return SearchRemoteDataSourceImpl(ref.watch(dioProvider));
}
