import 'package:ticket_platform_mobile/features/wishlist/domain/entities/wishlist_item_entity.dart';
import 'package:ticket_platform_mobile/features/wishlist/domain/repositories/favorite_repository.dart';

class GetFavoritesUsecase {
  final FavoriteRepository _repository;

  GetFavoritesUsecase(this._repository);

  Future<List<WishlistItemEntity>> call() async {
    return await _repository.getFavorites();
  }
}
