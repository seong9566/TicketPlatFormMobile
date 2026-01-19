// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sell_seat_option_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SellSeatGradeRespDto _$SellSeatGradeRespDtoFromJson(
  Map<String, dynamic> json,
) => _SellSeatGradeRespDto(
  gradeId: (json['gradeId'] as num).toInt(),
  code: json['code'] as String,
  gradeName: json['gradeName'] as String,
);

Map<String, dynamic> _$SellSeatGradeRespDtoToJson(
  _SellSeatGradeRespDto instance,
) => <String, dynamic>{
  'gradeId': instance.gradeId,
  'code': instance.code,
  'gradeName': instance.gradeName,
};

_SellSeatLocationRespDto _$SellSeatLocationRespDtoFromJson(
  Map<String, dynamic> json,
) => _SellSeatLocationRespDto(
  locationId: (json['locationId'] as num).toInt(),
  locationName: json['locationName'] as String,
);

Map<String, dynamic> _$SellSeatLocationRespDtoToJson(
  _SellSeatLocationRespDto instance,
) => <String, dynamic>{
  'locationId': instance.locationId,
  'locationName': instance.locationName,
};

_SellSeatAreaRespDto _$SellSeatAreaRespDtoFromJson(Map<String, dynamic> json) =>
    _SellSeatAreaRespDto(
      areaId: (json['areaId'] as num).toInt(),
      areaName: json['areaName'] as String,
    );

Map<String, dynamic> _$SellSeatAreaRespDtoToJson(
  _SellSeatAreaRespDto instance,
) => <String, dynamic>{
  'areaId': instance.areaId,
  'areaName': instance.areaName,
};

_SellSeatOptionsRespDto _$SellSeatOptionsRespDtoFromJson(
  Map<String, dynamic> json,
) => _SellSeatOptionsRespDto(
  grades: (json['grades'] as List<dynamic>)
      .map((e) => SellSeatGradeRespDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  locations: (json['locations'] as List<dynamic>)
      .map((e) => SellSeatLocationRespDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  areas: (json['areas'] as List<dynamic>)
      .map((e) => SellSeatAreaRespDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  allowCustomLocation: json['allowCustomLocation'] as bool,
);

Map<String, dynamic> _$SellSeatOptionsRespDtoToJson(
  _SellSeatOptionsRespDto instance,
) => <String, dynamic>{
  'grades': instance.grades,
  'locations': instance.locations,
  'areas': instance.areas,
  'allowCustomLocation': instance.allowCustomLocation,
};
