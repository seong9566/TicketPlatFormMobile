import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_seat_option_entity.dart';

part 'sell_seat_option_resp_dto.freezed.dart';
part 'sell_seat_option_resp_dto.g.dart';

@freezed
abstract class SellSeatLocationRespDto with _$SellSeatLocationRespDto {
  const factory SellSeatLocationRespDto({
    required String locationId,
    required String locationName,
  }) = _SellSeatLocationRespDto;

  factory SellSeatLocationRespDto.fromJson(Map<String, dynamic> json) =>
      _$SellSeatLocationRespDtoFromJson(json);
}

@freezed
abstract class SellSeatOptionsRespDto with _$SellSeatOptionsRespDto {
  const factory SellSeatOptionsRespDto({
    required List<SellSeatLocationRespDto> locations,
    required bool allowCustomLocation,
  }) = _SellSeatOptionsRespDto;

  factory SellSeatOptionsRespDto.fromJson(Map<String, dynamic> json) =>
      _$SellSeatOptionsRespDtoFromJson(json);
}

extension SellSeatLocationRespDtoX on SellSeatLocationRespDto {
  SellSeatLocationEntity toEntity() => SellSeatLocationEntity(
    locationId: locationId,
    locationName: locationName,
  );
}

extension SellSeatOptionsRespDtoX on SellSeatOptionsRespDto {
  SellSeatOptionsEntity toEntity() => SellSeatOptionsEntity(
    locations: locations.map((e) => e.toEntity()).toList(),
    allowCustomLocation: allowCustomLocation,
  );
}
