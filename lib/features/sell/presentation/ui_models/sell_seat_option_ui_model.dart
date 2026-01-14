import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_seat_option_entity.dart';

part 'sell_seat_option_ui_model.freezed.dart';

@freezed
abstract class SellSeatLocationUiModel with _$SellSeatLocationUiModel {
  const factory SellSeatLocationUiModel({
    required String locationId,
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
abstract class SellSeatOptionsUiModel with _$SellSeatOptionsUiModel {
  const factory SellSeatOptionsUiModel({
    required List<SellSeatLocationUiModel> locations,
    required bool allowCustomLocation,
  }) = _SellSeatOptionsUiModel;

  factory SellSeatOptionsUiModel.fromEntity(SellSeatOptionsEntity entity) {
    return SellSeatOptionsUiModel(
      locations: entity.locations
          .map((e) => SellSeatLocationUiModel.fromEntity(e))
          .toList(),
      allowCustomLocation: entity.allowCustomLocation,
    );
  }
}
