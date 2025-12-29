import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/wishlist/domain/entities/wishlist_item_entity.dart';
import 'package:ticket_platform_mobile/features/wishlist/presentation/ui_models/wishlist_ui_model.dart';
import 'package:ticket_platform_mobile/features/wishlist/presentation/viewmodels/wishlist_state.dart';

part 'wishlist_viewmodel.g.dart';

@riverpod
class WishlistViewModel extends _$WishlistViewModel {
  @override
  FutureOr<WishlistState> build() async {
    // Mock data for UI implementation
    await Future.delayed(const Duration(milliseconds: 500));

    final mockEntities = [
      WishlistItemEntity(
        id: '1',
        category: '뮤지컬',
        title: '<헤드윅>',
        eventDate: DateTime(2024, 8, 15, 19, 30),
        price: 88000,
        imageUrl: 'https://picsum.photos/400/400?random=11',
        likedAt: DateTime(2024, 7, 22),
      ),
      WishlistItemEntity(
        id: '2',
        category: '콘서트',
        title: 'Coldplay',
        eventDate: DateTime(2024, 9, 20, 20, 0),
        price: 120000,
        imageUrl: 'https://picsum.photos/400/400?random=12',
        likedAt: DateTime(2024, 7, 21),
      ),
      WishlistItemEntity(
        id: '3',
        category: '연극',
        title: '<벚꽃동산>',
        eventDate: DateTime(2024, 10, 5, 15, 0),
        price: 55000,
        imageUrl: 'https://picsum.photos/400/400?random=13',
        likedAt: DateTime(2024, 7, 18),
      ),
    ];

    return WishlistState(
      items: mockEntities.map((e) => WishlistUiModel.fromEntity(e)).toList(),
    );
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => await build());
  }

  Future<void> toggleLike(String id) async {
    // Implementation for toggling like
  }
}
