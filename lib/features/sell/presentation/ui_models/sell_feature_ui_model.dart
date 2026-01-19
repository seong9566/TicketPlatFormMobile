import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_feature_entity.dart';

class SellFeatureUiModel {
  final int id;
  final String code;
  final String nameKo;

  const SellFeatureUiModel({
    required this.id,
    required this.code,
    required this.nameKo,
  });

  factory SellFeatureUiModel.fromEntity(SellFeatureEntity entity) {
    return SellFeatureUiModel(
      id: entity.id,
      code: entity.code,
      nameKo: entity.nameKo,
    );
  }
}
