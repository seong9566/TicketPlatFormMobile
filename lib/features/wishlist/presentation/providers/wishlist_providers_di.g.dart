// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_providers_di.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(favoriteRemoteDataSource)
const favoriteRemoteDataSourceProvider = FavoriteRemoteDataSourceProvider._();

final class FavoriteRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          FavoriteRemoteDataSource,
          FavoriteRemoteDataSource,
          FavoriteRemoteDataSource
        >
    with $Provider<FavoriteRemoteDataSource> {
  const FavoriteRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoriteRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoriteRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<FavoriteRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FavoriteRemoteDataSource create(Ref ref) {
    return favoriteRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FavoriteRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FavoriteRemoteDataSource>(value),
    );
  }
}

String _$favoriteRemoteDataSourceHash() =>
    r'22183f4e4e16f11275bb9f31b4abb130411bdc13';

@ProviderFor(favoriteRepository)
const favoriteRepositoryProvider = FavoriteRepositoryProvider._();

final class FavoriteRepositoryProvider
    extends
        $FunctionalProvider<
          FavoriteRepository,
          FavoriteRepository,
          FavoriteRepository
        >
    with $Provider<FavoriteRepository> {
  const FavoriteRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoriteRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoriteRepositoryHash();

  @$internal
  @override
  $ProviderElement<FavoriteRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FavoriteRepository create(Ref ref) {
    return favoriteRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FavoriteRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FavoriteRepository>(value),
    );
  }
}

String _$favoriteRepositoryHash() =>
    r'de280e656f6b03f2c03616147582a86947db9810';

@ProviderFor(getFavoritesUsecase)
const getFavoritesUsecaseProvider = GetFavoritesUsecaseProvider._();

final class GetFavoritesUsecaseProvider
    extends
        $FunctionalProvider<
          GetFavoritesUsecase,
          GetFavoritesUsecase,
          GetFavoritesUsecase
        >
    with $Provider<GetFavoritesUsecase> {
  const GetFavoritesUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getFavoritesUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getFavoritesUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetFavoritesUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetFavoritesUsecase create(Ref ref) {
    return getFavoritesUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetFavoritesUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetFavoritesUsecase>(value),
    );
  }
}

String _$getFavoritesUsecaseHash() =>
    r'8e4f6250b4e124c72b9cbc4b2bcc02abb2d70dcb';

@ProviderFor(toggleFavoriteUsecase)
const toggleFavoriteUsecaseProvider = ToggleFavoriteUsecaseProvider._();

final class ToggleFavoriteUsecaseProvider
    extends
        $FunctionalProvider<
          ToggleFavoriteUsecase,
          ToggleFavoriteUsecase,
          ToggleFavoriteUsecase
        >
    with $Provider<ToggleFavoriteUsecase> {
  const ToggleFavoriteUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'toggleFavoriteUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$toggleFavoriteUsecaseHash();

  @$internal
  @override
  $ProviderElement<ToggleFavoriteUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ToggleFavoriteUsecase create(Ref ref) {
    return toggleFavoriteUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ToggleFavoriteUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ToggleFavoriteUsecase>(value),
    );
  }
}

String _$toggleFavoriteUsecaseHash() =>
    r'8cf79c5c639a35f40b20ba5935738f517d2a7c1a';
