// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_artists_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getArtistsUseCase)
const getArtistsUseCaseProvider = GetArtistsUseCaseProvider._();

final class GetArtistsUseCaseProvider
    extends
        $FunctionalProvider<
          GetArtistsUseCase,
          GetArtistsUseCase,
          GetArtistsUseCase
        >
    with $Provider<GetArtistsUseCase> {
  const GetArtistsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getArtistsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getArtistsUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetArtistsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetArtistsUseCase create(Ref ref) {
    return getArtistsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetArtistsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetArtistsUseCase>(value),
    );
  }
}

String _$getArtistsUseCaseHash() => r'fa90518feb5f4540387770a0e51d08b6fa8b7beb';
