import 'package:freezed_annotation/freezed_annotation.dart';

part 'sell_feature_entity.freezed.dart';

/// 특이사항 Entity
@freezed
abstract class SellFeatureEntity with _$SellFeatureEntity {
  const factory SellFeatureEntity({
    required int id,
    required String code,
    required String nameKo,
  }) = _SellFeatureEntity;
}
