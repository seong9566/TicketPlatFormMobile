import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/features/search/data/datasources/search_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/search/data/dto/request/search_req_dto.dart';
import 'package:ticket_platform_mobile/features/search/data/dto/response/search_res_dto.dart';
import 'package:ticket_platform_mobile/features/search/domain/repositories/search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  SearchRepositoryImpl(this._remoteDataSource);

  final SearchRemoteDataSource _remoteDataSource;

  @override
  Future<SearchResDto> search({
    required String keyword,
    int page = 1,
    int pageSize = 20,
  }) async {
    final response = await _remoteDataSource.search(
      SearchReqDto(keyword: keyword, page: page, pageSize: pageSize),
    );
    return response.mapOrThrow((dto) => dto, errorMessage: '검색에 실패했습니다.');
  }
}
