import 'package:freezed_annotation/freezed_annotation.dart';

part 'wishlist_item_entity.freezed.dart';

@freezed
abstract class WishlistItemEntity with _$WishlistItemEntity {
  const factory WishlistItemEntity({
    required String id,
    required String category,
    required String title,
    required DateTime eventDate,
    required int price,
    required String imageUrl,
    required DateTime likedAt,
  }) = _WishlistItemEntity;
}
