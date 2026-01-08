import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/wishlist/domain/usecases/get_favorites_usecase.dart';
import 'package:ticket_platform_mobile/features/wishlist/domain/usecases/toggle_favorite_usecase.dart';
import 'package:ticket_platform_mobile/features/wishlist/presentation/providers/wishlist_providers_di.dart';
import 'package:ticket_platform_mobile/features/wishlist/presentation/ui_models/wishlist_ui_model.dart';
import 'package:ticket_platform_mobile/features/wishlist/presentation/viewmodels/wishlist_state.dart';

part 'wishlist_viewmodel.g.dart';

@riverpod
class WishlistViewModel extends _$WishlistViewModel {
  GetFavoritesUsecase get _getFavoritesUsecase =>
      ref.read(getFavoritesUsecaseProvider);
  ToggleFavoriteUsecase get _toggleFavoriteUsecase =>
      ref.read(toggleFavoriteUsecaseProvider);

  @override
  Future<WishlistState> build() async {
    const userId = 1;
    final entities = await _getFavoritesUsecase.call(userId);

    return WishlistState(
      items: entities.map((e) => WishlistUiModel.fromEntity(e)).toList(),
    );
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => build());
  }

  Future<void> toggleLike(int ticketId) async {
    const userId = 1;
    final result = await AsyncValue.guard(
      () => _toggleFavoriteUsecase.call(userId: userId, ticketId: ticketId),
    );

    if (result.hasError) {
      // Handle error
      return;
    }

    // Refresh after toggle
    await refresh();
  }
}
