import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_seat_option_entity.dart';

part 'sell_seat_option_ui_model.freezed.dart';

@freezed
abstract class SellSeatGradeUiModel with _$SellSeatGradeUiModel {
  const factory SellSeatGradeUiModel({
    required int gradeId,
    required String code,
    required String gradeName,
  }) = _SellSeatGradeUiModel;

  factory SellSeatGradeUiModel.fromEntity(SellSeatGradeEntity entity) {
    return SellSeatGradeUiModel(
      gradeId: entity.gradeId,
      code: entity.code,
      gradeName: entity.gradeName,
    );
  }
}

@freezed
abstract class SellSeatLocationUiModel with _$SellSeatLocationUiModel {
  const factory SellSeatLocationUiModel({
    required int locationId,
    required String locationName,
  }) = _SellSeatLocationUiModel;

  factory SellSeatLocationUiModel.fromEntity(SellSeatLocationEntity entity) {
    return SellSeatLocationUiModel(
      locationId: entity.locationId,
      locationName: entity.locationName,
    );
  }
}

@freezed
abstract class SellSeatAreaUiModel with _$SellSeatAreaUiModel {
  const factory SellSeatAreaUiModel({
    required int areaId,
    required String areaName,
  }) = _SellSeatAreaUiModel;

  factory SellSeatAreaUiModel.fromEntity(SellSeatAreaEntity entity) {
    return SellSeatAreaUiModel(
      areaId: entity.areaId,
      areaName: entity.areaName,
    );
  }
}

@freezed
abstract class SellSeatOptionsUiModel with _$SellSeatOptionsUiModel {
  const factory SellSeatOptionsUiModel({
    required List<SellSeatGradeUiModel> grades,
    required List<SellSeatLocationUiModel> locations,
    required List<SellSeatAreaUiModel> areas,
    required bool allowCustomLocation,
  }) = _SellSeatOptionsUiModel;

  factory SellSeatOptionsUiModel.fromEntity(SellSeatOptionsEntity entity) {
    return SellSeatOptionsUiModel(
      grades: entity.grades
          .map((e) => SellSeatGradeUiModel.fromEntity(e))
          .toList(),
      locations: entity.locations
          .map((e) => SellSeatLocationUiModel.fromEntity(e))
          .toList(),
      areas: entity.areas
          .map((e) => SellSeatAreaUiModel.fromEntity(e))
          .toList(),
      allowCustomLocation: entity.allowCustomLocation,
    );
  }
}
