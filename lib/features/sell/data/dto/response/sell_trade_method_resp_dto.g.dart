// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sell_trade_method_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SellTradeMethodRespDto _$SellTradeMethodRespDtoFromJson(
  Map<String, dynamic> json,
) => _SellTradeMethodRespDto(
  id: (json['id'] as num).toInt(),
  code: json['code'] as String,
  nameKo: json['nameKo'] as String,
  nameEn: json['nameEn'] as String?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$SellTradeMethodRespDtoToJson(
  _SellTradeMethodRespDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'nameKo': instance.nameKo,
  'nameEn': instance.nameEn,
  'description': instance.description,
};
