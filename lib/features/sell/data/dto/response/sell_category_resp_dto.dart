import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_category_entity.dart';

part 'sell_category_resp_dto.freezed.dart';
part 'sell_category_resp_dto.g.dart';

@freezed
abstract class SellCategoryRespDto with _$SellCategoryRespDto {
  const factory SellCategoryRespDto({
    required int categoryId,
    required String code,
    required String name,
    String? iconUrl,
  }) = _SellCategoryRespDto;

  factory SellCategoryRespDto.fromJson(Map<String, dynamic> json) =>
      _$SellCategoryRespDtoFromJson(json);
}

extension SellCategoryRespDtoX on SellCategoryRespDto {
  SellCategoryEntity toEntity() => SellCategoryEntity(
    categoryId: categoryId,
    code: code,
    name: name,
    iconUrl: iconUrl,
  );
}
