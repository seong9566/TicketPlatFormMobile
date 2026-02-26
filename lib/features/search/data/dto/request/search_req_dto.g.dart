// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_req_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchReqDto _$SearchReqDtoFromJson(Map<String, dynamic> json) =>
    _SearchReqDto(
      keyword: json['keyword'] as String,
      page: (json['page'] as num?)?.toInt() ?? 1,
      pageSize: (json['pageSize'] as num?)?.toInt() ?? 20,
    );

Map<String, dynamic> _$SearchReqDtoToJson(_SearchReqDto instance) =>
    <String, dynamic>{
      'keyword': instance.keyword,
      'page': instance.page,
      'pageSize': instance.pageSize,
    };
