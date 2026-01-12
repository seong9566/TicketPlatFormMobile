import 'package:ticket_platform_mobile/features/wishlist/data/datasources/favorite_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/wishlist/data/dto/request/favorite_toggle_req_dto.dart';
import 'package:ticket_platform_mobile/features/wishlist/data/dto/response/favorite_resp_dto.dart';
import 'package:ticket_platform_mobile/features/wishlist/domain/entities/wishlist_item_entity.dart';
import 'package:ticket_platform_mobile/features/wishlist/domain/repositories/favorite_repository.dart';

class FavoriteRepositoryImpl implements FavoriteRepository {
  final FavoriteRemoteDataSource _remoteDataSource;

  FavoriteRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<WishlistItemEntity>> getFavorites() async {
    try {
      final response = await _remoteDataSource.getFavorites();
      if (response.success && response.data != null) {
        return response.data!.map((dto) => dto.toEntity()).toList();
      }
      return [];
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> toggleFavorite({required int ticketId}) async {
    try {
      final req = FavoriteToggleReqDto(ticketId: ticketId);
      final response = await _remoteDataSource.toggleFavorite(req);
      if (response.success && response.data != null) {
        return response.data!.isFavorited;
      }
      return false;
    } catch (e) {
      rethrow;
    }
  }
}
