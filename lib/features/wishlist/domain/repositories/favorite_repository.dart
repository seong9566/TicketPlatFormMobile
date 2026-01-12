import 'package:ticket_platform_mobile/features/wishlist/domain/entities/wishlist_item_entity.dart';

abstract class FavoriteRepository {
  Future<List<WishlistItemEntity>> getFavorites();
  Future<bool> toggleFavorite({required int ticketId});
}
