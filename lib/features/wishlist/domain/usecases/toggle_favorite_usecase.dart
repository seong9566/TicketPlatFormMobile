import 'package:ticket_platform_mobile/features/wishlist/domain/repositories/favorite_repository.dart';

class ToggleFavoriteUsecase {
  final FavoriteRepository _repository;

  ToggleFavoriteUsecase(this._repository);

  Future<bool> call({required int ticketId}) async {
    return await _repository.toggleFavorite(ticketId: ticketId);
  }
}
