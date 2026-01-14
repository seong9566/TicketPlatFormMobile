import 'package:freezed_annotation/freezed_annotation.dart';

part 'sell_category_entity.freezed.dart';

@freezed
abstract class SellCategoryEntity with _$SellCategoryEntity {
  const factory SellCategoryEntity({
    required int categoryId,
    required String code,
    required String name,
    String? iconUrl,
  }) = _SellCategoryEntity;
}
