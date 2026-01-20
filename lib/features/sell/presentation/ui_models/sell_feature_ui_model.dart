import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_feature_entity.dart';

part 'sell_feature_ui_model.freezed.dart';

@freezed
abstract class SellFeatureUiModel with _$SellFeatureUiModel {
  const factory SellFeatureUiModel({
    required int id,
    required String code,
    required String nameKo,
  }) = _SellFeatureUiModel;

  factory SellFeatureUiModel.fromEntity(SellFeatureEntity entity) {
    return SellFeatureUiModel(
      id: entity.id,
      code: entity.code,
      nameKo: entity.nameKo,
    );
  }
}
