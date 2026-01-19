import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_feature_entity.dart';

part 'sell_feature_resp_dto.freezed.dart';
part 'sell_feature_resp_dto.g.dart';

/// 특이사항 응답 DTO
@freezed
abstract class SellFeatureRespDto with _$SellFeatureRespDto {
  const factory SellFeatureRespDto({
    required int id,
    required String code,
    required String nameKo,
  }) = _SellFeatureRespDto;

  factory SellFeatureRespDto.fromJson(Map<String, dynamic> json) =>
      _$SellFeatureRespDtoFromJson(json);
}

extension SellFeatureRespDtoX on SellFeatureRespDto {
  SellFeatureEntity toEntity() =>
      SellFeatureEntity(id: id, code: code, nameKo: nameKo);
}
