import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/wishlist/presentation/ui_models/wishlist_ui_model.dart';

part 'wishlist_state.freezed.dart';

@freezed
abstract class WishlistState with _$WishlistState {
  const factory WishlistState({
    @Default([]) List<WishlistUiModel> items,
    @Default(false) bool isLoading,
  }) = _WishlistState;
}
