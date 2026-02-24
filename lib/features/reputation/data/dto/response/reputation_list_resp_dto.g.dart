// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reputation_list_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReputationListRespDto _$ReputationListRespDtoFromJson(
  Map<String, dynamic> json,
) => _ReputationListRespDto(
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => ReputationRespDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ReputationRespDto>[],
  nextCursor: json['nextCursor'] as String?,
  hasNext: json['hasNext'] as bool? ?? false,
);

Map<String, dynamic> _$ReputationListRespDtoToJson(
  _ReputationListRespDto instance,
) => <String, dynamic>{
  'items': instance.items,
  'nextCursor': instance.nextCursor,
  'hasNext': instance.hasNext,
};
