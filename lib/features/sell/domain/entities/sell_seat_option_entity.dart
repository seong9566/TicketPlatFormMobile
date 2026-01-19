import 'package:freezed_annotation/freezed_annotation.dart';

part 'sell_seat_option_entity.freezed.dart';

/// 좌석 등급 Entity
@freezed
abstract class SellSeatGradeEntity with _$SellSeatGradeEntity {
  const factory SellSeatGradeEntity({
    required int gradeId,
    required String code,
    required String gradeName,
  }) = _SellSeatGradeEntity;
}

/// 좌석 위치 Entity
@freezed
abstract class SellSeatLocationEntity with _$SellSeatLocationEntity {
  const factory SellSeatLocationEntity({
    required int locationId,
    required String locationName,
  }) = _SellSeatLocationEntity;
}

/// 좌석 구역 Entity
@freezed
abstract class SellSeatAreaEntity with _$SellSeatAreaEntity {
  const factory SellSeatAreaEntity({
    required int areaId,
    required String areaName,
  }) = _SellSeatAreaEntity;
}

/// 좌석 옵션 Entity
@freezed
abstract class SellSeatOptionsEntity with _$SellSeatOptionsEntity {
  const factory SellSeatOptionsEntity({
    required List<SellSeatGradeEntity> grades,
    required List<SellSeatLocationEntity> locations,
    required List<SellSeatAreaEntity> areas,
    required bool allowCustomLocation,
  }) = _SellSeatOptionsEntity;
}
