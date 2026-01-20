import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_trade_method_entity.dart';

part 'sell_trade_method_ui_model.freezed.dart';

@freezed
abstract class SellTradeMethodUiModel with _$SellTradeMethodUiModel {
  const factory SellTradeMethodUiModel({
    required int id,
    required String code,
    required String nameKo,
    String? nameEn,
    String? description,
  }) = _SellTradeMethodUiModel;

  factory SellTradeMethodUiModel.fromEntity(SellTradeMethodEntity entity) {
    return SellTradeMethodUiModel(
      id: entity.id,
      code: entity.code,
      nameKo: entity.nameKo,
      nameEn: entity.nameEn,
      description: entity.description,
    );
  }
}
