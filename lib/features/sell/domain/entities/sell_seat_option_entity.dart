import 'package:freezed_annotation/freezed_annotation.dart';

part 'sell_seat_option_entity.freezed.dart';

@freezed
abstract class SellSeatLocationEntity with _$SellSeatLocationEntity {
  const factory SellSeatLocationEntity({
    required String locationId,
    required String locationName,
  }) = _SellSeatLocationEntity;
}

@freezed
abstract class SellSeatOptionsEntity with _$SellSeatOptionsEntity {
  const factory SellSeatOptionsEntity({
    required List<SellSeatLocationEntity> locations,
    required bool allowCustomLocation,
  }) = _SellSeatOptionsEntity;
}
