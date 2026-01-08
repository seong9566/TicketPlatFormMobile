import 'package:ticket_platform_mobile/features/wishlist/domain/entities/wishlist_item_entity.dart';

abstract class FavoriteRepository {
  Future<List<WishlistItemEntity>> getFavorites(int userId);
  Future<bool> toggleFavorite({required int userId, required int ticketId});
}
