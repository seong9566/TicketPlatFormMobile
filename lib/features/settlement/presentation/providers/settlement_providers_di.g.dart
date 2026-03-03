// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settlement_providers_di.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(settlementRemoteDataSource)
const settlementRemoteDataSourceProvider =
    SettlementRemoteDataSourceProvider._();

final class SettlementRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          SettlementRemoteDataSource,
          SettlementRemoteDataSource,
          SettlementRemoteDataSource
        >
    with $Provider<SettlementRemoteDataSource> {
  const SettlementRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'settlementRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$settlementRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<SettlementRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SettlementRemoteDataSource create(Ref ref) {
    return settlementRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SettlementRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SettlementRemoteDataSource>(value),
    );
  }
}

String _$settlementRemoteDataSourceHash() =>
    r'dfddb21b83f142ffa3c61ccf2b3471fdf8af27f7';

@ProviderFor(settlementRepository)
const settlementRepositoryProvider = SettlementRepositoryProvider._();

final class SettlementRepositoryProvider
    extends
        $FunctionalProvider<
          SettlementRepository,
          SettlementRepository,
          SettlementRepository
        >
    with $Provider<SettlementRepository> {
  const SettlementRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'settlementRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$settlementRepositoryHash();

  @$internal
  @override
  $ProviderElement<SettlementRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SettlementRepository create(Ref ref) {
    return settlementRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SettlementRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SettlementRepository>(value),
    );
  }
}

String _$settlementRepositoryHash() =>
    r'f28141d10b4c7dbe20fc2381b0148d12d913b088';
