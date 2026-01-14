// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sell_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sellRepository)
const sellRepositoryProvider = SellRepositoryProvider._();

final class SellRepositoryProvider
    extends $FunctionalProvider<SellRepository, SellRepository, SellRepository>
    with $Provider<SellRepository> {
  const SellRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sellRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sellRepositoryHash();

  @$internal
  @override
  $ProviderElement<SellRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SellRepository create(Ref ref) {
    return sellRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SellRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SellRepository>(value),
    );
  }
}

String _$sellRepositoryHash() => r'27280b5c01211b5e718adab38e4a5a7fc7a29051';
