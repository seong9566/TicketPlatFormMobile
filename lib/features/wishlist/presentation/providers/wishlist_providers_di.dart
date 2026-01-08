import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/dio_provider.dart';
import 'package:ticket_platform_mobile/features/wishlist/data/datasources/favorite_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/wishlist/data/repositories/favorite_repository_impl.dart';
import 'package:ticket_platform_mobile/features/wishlist/domain/repositories/favorite_repository.dart';
import 'package:ticket_platform_mobile/features/wishlist/domain/usecases/get_favorites_usecase.dart';
import 'package:ticket_platform_mobile/features/wishlist/domain/usecases/toggle_favorite_usecase.dart';

part 'wishlist_providers_di.g.dart';

@riverpod
FavoriteRemoteDataSource favoriteRemoteDataSource(Ref ref) {
  final dio = ref.watch(dioProvider);
  return FavoriteRemoteDataSourceImpl(dio);
}

@riverpod
FavoriteRepository favoriteRepository(Ref ref) {
  final remoteDataSource = ref.watch(favoriteRemoteDataSourceProvider);
  return FavoriteRepositoryImpl(remoteDataSource);
}

@riverpod
GetFavoritesUsecase getFavoritesUsecase(Ref ref) {
  final repository = ref.watch(favoriteRepositoryProvider);
  return GetFavoritesUsecase(repository);
}

@riverpod
ToggleFavoriteUsecase toggleFavoriteUsecase(Ref ref) {
  final repository = ref.watch(favoriteRepositoryProvider);
  return ToggleFavoriteUsecase(repository);
}
