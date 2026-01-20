import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_trade_method_entity.dart';

part 'sell_trade_method_resp_dto.freezed.dart';
part 'sell_trade_method_resp_dto.g.dart';

@freezed
abstract class SellTradeMethodRespDto with _$SellTradeMethodRespDto {
  const factory SellTradeMethodRespDto({
    required int id,
    required String code,
    required String nameKo,
    String? nameEn,
    String? description,
  }) = _SellTradeMethodRespDto;

  factory SellTradeMethodRespDto.fromJson(Map<String, dynamic> json) =>
      _$SellTradeMethodRespDtoFromJson(json);
}

extension SellTradeMethodRespDtoX on SellTradeMethodRespDto {
  SellTradeMethodEntity toEntity() {
    return SellTradeMethodEntity(
      id: id,
      code: code,
      nameKo: nameKo,
      nameEn: nameEn,
      description: description,
    );
  }
}
