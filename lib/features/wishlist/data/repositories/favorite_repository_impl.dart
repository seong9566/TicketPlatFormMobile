import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/features/wishlist/data/datasources/favorite_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/wishlist/data/dto/request/favorite_toggle_req_dto.dart';
import 'package:ticket_platform_mobile/features/wishlist/domain/entities/wishlist_item_entity.dart';
import 'package:ticket_platform_mobile/features/wishlist/domain/repositories/favorite_repository.dart';

class FavoriteRepositoryImpl implements FavoriteRepository {
  final FavoriteRemoteDataSource _remoteDataSource;

  FavoriteRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<WishlistItemEntity>> getFavorites() async {
    final response = await _remoteDataSource.getFavorites();
    return response.mapListOrEmpty((dto) => dto.toEntity());
  }

  @override
  Future<bool> toggleFavorite({required int ticketId}) async {
    final req = FavoriteToggleReqDto(ticketId: ticketId);
    final response = await _remoteDataSource.toggleFavorite(req);
    return response.mapOrThrow((dto) => dto.isFavorited);
  }
}
