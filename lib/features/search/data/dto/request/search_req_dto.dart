import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_req_dto.freezed.dart';
part 'search_req_dto.g.dart';

@freezed
abstract class SearchReqDto with _$SearchReqDto {
  const factory SearchReqDto({
    required String keyword,
    @Default(1) int page,
    @Default(20) int pageSize,
  }) = _SearchReqDto;

  factory SearchReqDto.fromJson(Map<String, dynamic> json) =>
      _$SearchReqDtoFromJson(json);
}

extension SearchReqDtoX on SearchReqDto {
  Map<String, dynamic> toMap() => {
    'keyword': keyword,
    'page': page,
    'pageSize': pageSize,
  };
}
