// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sell_seat_option_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SellSeatLocationRespDto _$SellSeatLocationRespDtoFromJson(
  Map<String, dynamic> json,
) => _SellSeatLocationRespDto(
  locationId: json['locationId'] as String,
  locationName: json['locationName'] as String,
);

Map<String, dynamic> _$SellSeatLocationRespDtoToJson(
  _SellSeatLocationRespDto instance,
) => <String, dynamic>{
  'locationId': instance.locationId,
  'locationName': instance.locationName,
};

_SellSeatOptionsRespDto _$SellSeatOptionsRespDtoFromJson(
  Map<String, dynamic> json,
) => _SellSeatOptionsRespDto(
  locations: (json['locations'] as List<dynamic>)
      .map((e) => SellSeatLocationRespDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  allowCustomLocation: json['allowCustomLocation'] as bool,
);

Map<String, dynamic> _$SellSeatOptionsRespDtoToJson(
  _SellSeatOptionsRespDto instance,
) => <String, dynamic>{
  'locations': instance.locations,
  'allowCustomLocation': instance.allowCustomLocation,
};
