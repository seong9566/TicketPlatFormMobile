// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settlement_list_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SettlementListRespDto _$SettlementListRespDtoFromJson(
  Map<String, dynamic> json,
) => _SettlementListRespDto(
  settlements:
      (json['settlements'] as List<dynamic>?)
          ?.map((e) => SettlementRespDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  totalCount: (json['totalCount'] as num).toInt(),
  totalNetAmount: (json['totalNetAmount'] as num).toInt(),
);

Map<String, dynamic> _$SettlementListRespDtoToJson(
  _SettlementListRespDto instance,
) => <String, dynamic>{
  'settlements': instance.settlements,
  'totalCount': instance.totalCount,
  'totalNetAmount': instance.totalNetAmount,
};
