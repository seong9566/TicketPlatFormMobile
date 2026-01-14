// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sell_category_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SellCategoryRespDto _$SellCategoryRespDtoFromJson(Map<String, dynamic> json) =>
    _SellCategoryRespDto(
      categoryId: (json['categoryId'] as num).toInt(),
      code: json['code'] as String,
      name: json['name'] as String,
      iconUrl: json['iconUrl'] as String?,
    );

Map<String, dynamic> _$SellCategoryRespDtoToJson(
  _SellCategoryRespDto instance,
) => <String, dynamic>{
  'categoryId': instance.categoryId,
  'code': instance.code,
  'name': instance.name,
  'iconUrl': instance.iconUrl,
};
