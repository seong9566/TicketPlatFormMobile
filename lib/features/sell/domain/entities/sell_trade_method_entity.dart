import 'package:freezed_annotation/freezed_annotation.dart';

part 'sell_trade_method_entity.freezed.dart';

@freezed
abstract class SellTradeMethodEntity with _$SellTradeMethodEntity {
  const factory SellTradeMethodEntity({
    required int id,
    required String code,
    required String nameKo,
    String? nameEn,
    String? description,
  }) = _SellTradeMethodEntity;
}
