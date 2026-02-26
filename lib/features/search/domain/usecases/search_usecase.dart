import 'package:ticket_platform_mobile/features/search/data/dto/response/search_res_dto.dart';
import 'package:ticket_platform_mobile/features/search/domain/repositories/search_repository.dart';

class SearchUseCase {
  SearchUseCase(this._repository);

  final SearchRepository _repository;

  Future<SearchResDto> call(String keyword, {int page = 1, int pageSize = 20}) {
    return _repository.search(keyword: keyword, page: page, pageSize: pageSize);
  }
}
