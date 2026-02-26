import 'package:ticket_platform_mobile/features/search/data/dto/response/search_res_dto.dart';

abstract class SearchRepository {
  Future<SearchResDto> search({
    required String keyword,
    int page = 1,
    int pageSize = 20,
  });
}
