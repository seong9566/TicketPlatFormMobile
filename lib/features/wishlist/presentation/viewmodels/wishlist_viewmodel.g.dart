// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(WishlistViewModel)
const wishlistViewModelProvider = WishlistViewModelProvider._();

final class WishlistViewModelProvider
    extends $AsyncNotifierProvider<WishlistViewModel, WishlistState> {
  const WishlistViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'wishlistViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$wishlistViewModelHash();

  @$internal
  @override
  WishlistViewModel create() => WishlistViewModel();
}

String _$wishlistViewModelHash() => r'1d15fe52152b8aed63560f81d8615aad2f33a547';

abstract class _$WishlistViewModel extends $AsyncNotifier<WishlistState> {
  FutureOr<WishlistState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<WishlistState>, WishlistState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<WishlistState>, WishlistState>,
              AsyncValue<WishlistState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
