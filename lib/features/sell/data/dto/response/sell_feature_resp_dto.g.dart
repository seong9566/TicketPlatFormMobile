// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sell_feature_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SellFeatureRespDto _$SellFeatureRespDtoFromJson(Map<String, dynamic> json) =>
    _SellFeatureRespDto(
      id: (json['id'] as num).toInt(),
      code: json['code'] as String,
      nameKo: json['nameKo'] as String,
    );

Map<String, dynamic> _$SellFeatureRespDtoToJson(_SellFeatureRespDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'nameKo': instance.nameKo,
    };
