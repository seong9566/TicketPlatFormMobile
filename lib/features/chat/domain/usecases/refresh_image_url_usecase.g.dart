// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_image_url_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(refreshImageUrlUsecase)
const refreshImageUrlUsecaseProvider = RefreshImageUrlUsecaseProvider._();

final class RefreshImageUrlUsecaseProvider
    extends
        $FunctionalProvider<
          RefreshImageUrlUsecase,
          RefreshImageUrlUsecase,
          RefreshImageUrlUsecase
        >
    with $Provider<RefreshImageUrlUsecase> {
  const RefreshImageUrlUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'refreshImageUrlUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$refreshImageUrlUsecaseHash();

  @$internal
  @override
  $ProviderElement<RefreshImageUrlUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RefreshImageUrlUsecase create(Ref ref) {
    return refreshImageUrlUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RefreshImageUrlUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RefreshImageUrlUsecase>(value),
    );
  }
}

String _$refreshImageUrlUsecaseHash() =>
    r'48e293d296c8eb84fa5a9c4aefa271a713f0b0a9';
