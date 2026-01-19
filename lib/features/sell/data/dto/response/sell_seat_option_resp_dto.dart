import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_seat_option_entity.dart';

part 'sell_seat_option_resp_dto.freezed.dart';
part 'sell_seat_option_resp_dto.g.dart';

/// 좌석 등급 응답 DTO
@freezed
abstract class SellSeatGradeRespDto with _$SellSeatGradeRespDto {
  const factory SellSeatGradeRespDto({
    required int gradeId,
    required String code,
    required String gradeName,
  }) = _SellSeatGradeRespDto;

  factory SellSeatGradeRespDto.fromJson(Map<String, dynamic> json) =>
      _$SellSeatGradeRespDtoFromJson(json);
}

/// 좌석 위치 응답 DTO
@freezed
abstract class SellSeatLocationRespDto with _$SellSeatLocationRespDto {
  const factory SellSeatLocationRespDto({
    required int locationId,
    required String locationName,
  }) = _SellSeatLocationRespDto;

  factory SellSeatLocationRespDto.fromJson(Map<String, dynamic> json) =>
      _$SellSeatLocationRespDtoFromJson(json);
}

/// 좌석 구역 응답 DTO
@freezed
abstract class SellSeatAreaRespDto with _$SellSeatAreaRespDto {
  const factory SellSeatAreaRespDto({
    required int areaId,
    required String areaName,
  }) = _SellSeatAreaRespDto;

  factory SellSeatAreaRespDto.fromJson(Map<String, dynamic> json) =>
      _$SellSeatAreaRespDtoFromJson(json);
}

/// 좌석 옵션 응답 DTO
@freezed
abstract class SellSeatOptionsRespDto with _$SellSeatOptionsRespDto {
  const factory SellSeatOptionsRespDto({
    required List<SellSeatGradeRespDto> grades,
    required List<SellSeatLocationRespDto> locations,
    required List<SellSeatAreaRespDto> areas,
    required bool allowCustomLocation,
  }) = _SellSeatOptionsRespDto;

  factory SellSeatOptionsRespDto.fromJson(Map<String, dynamic> json) =>
      _$SellSeatOptionsRespDtoFromJson(json);
}

// ========== Extensions ==========

extension SellSeatGradeRespDtoX on SellSeatGradeRespDto {
  SellSeatGradeEntity toEntity() =>
      SellSeatGradeEntity(gradeId: gradeId, code: code, gradeName: gradeName);
}

extension SellSeatLocationRespDtoX on SellSeatLocationRespDto {
  SellSeatLocationEntity toEntity() => SellSeatLocationEntity(
    locationId: locationId,
    locationName: locationName,
  );
}

extension SellSeatAreaRespDtoX on SellSeatAreaRespDto {
  SellSeatAreaEntity toEntity() =>
      SellSeatAreaEntity(areaId: areaId, areaName: areaName);
}

extension SellSeatOptionsRespDtoX on SellSeatOptionsRespDto {
  SellSeatOptionsEntity toEntity() => SellSeatOptionsEntity(
    grades: grades.map((e) => e.toEntity()).toList(),
    locations: locations.map((e) => e.toEntity()).toList(),
    areas: areas.map((e) => e.toEntity()).toList(),
    allowCustomLocation: allowCustomLocation,
  );
}
