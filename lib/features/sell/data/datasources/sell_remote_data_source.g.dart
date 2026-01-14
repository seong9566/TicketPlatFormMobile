// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sell_remote_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sellRemoteDataSource)
const sellRemoteDataSourceProvider = SellRemoteDataSourceProvider._();

final class SellRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          SellRemoteDataSource,
          SellRemoteDataSource,
          SellRemoteDataSource
        >
    with $Provider<SellRemoteDataSource> {
  const SellRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sellRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sellRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<SellRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SellRemoteDataSource create(Ref ref) {
    return sellRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SellRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SellRemoteDataSource>(value),
    );
  }
}

String _$sellRemoteDataSourceHash() =>
    r'bdefd1cca87a1416aef9dea946494dcea3693c22';
