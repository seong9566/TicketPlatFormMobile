// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_dashboard_providers_di.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(salesDashboardRemoteDataSource)
const salesDashboardRemoteDataSourceProvider =
    SalesDashboardRemoteDataSourceProvider._();

final class SalesDashboardRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          SalesDashboardRemoteDataSource,
          SalesDashboardRemoteDataSource,
          SalesDashboardRemoteDataSource
        >
    with $Provider<SalesDashboardRemoteDataSource> {
  const SalesDashboardRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'salesDashboardRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$salesDashboardRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<SalesDashboardRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SalesDashboardRemoteDataSource create(Ref ref) {
    return salesDashboardRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SalesDashboardRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SalesDashboardRemoteDataSource>(
        value,
      ),
    );
  }
}

String _$salesDashboardRemoteDataSourceHash() =>
    r'e671f7cd67f906f21748a1d9af7d38cc1d33c8a6';

@ProviderFor(salesDashboardRepository)
const salesDashboardRepositoryProvider = SalesDashboardRepositoryProvider._();

final class SalesDashboardRepositoryProvider
    extends
        $FunctionalProvider<
          SalesDashboardRepository,
          SalesDashboardRepository,
          SalesDashboardRepository
        >
    with $Provider<SalesDashboardRepository> {
  const SalesDashboardRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'salesDashboardRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$salesDashboardRepositoryHash();

  @$internal
  @override
  $ProviderElement<SalesDashboardRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SalesDashboardRepository create(Ref ref) {
    return salesDashboardRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SalesDashboardRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SalesDashboardRepository>(value),
    );
  }
}

String _$salesDashboardRepositoryHash() =>
    r'33077ae5b95523537b657f9434d4494008d6931d';

@ProviderFor(getSalesDashboardUsecase)
const getSalesDashboardUsecaseProvider = GetSalesDashboardUsecaseProvider._();

final class GetSalesDashboardUsecaseProvider
    extends
        $FunctionalProvider<
          GetSalesDashboardUsecase,
          GetSalesDashboardUsecase,
          GetSalesDashboardUsecase
        >
    with $Provider<GetSalesDashboardUsecase> {
  const GetSalesDashboardUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getSalesDashboardUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getSalesDashboardUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetSalesDashboardUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetSalesDashboardUsecase create(Ref ref) {
    return getSalesDashboardUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetSalesDashboardUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetSalesDashboardUsecase>(value),
    );
  }
}

String _$getSalesDashboardUsecaseHash() =>
    r'7b7d7bbd984c6a7ca96b3c06ef05ba6c8903961d';

@ProviderFor(getEventTicketsUsecase)
const getEventTicketsUsecaseProvider = GetEventTicketsUsecaseProvider._();

final class GetEventTicketsUsecaseProvider
    extends
        $FunctionalProvider<
          GetEventTicketsUsecase,
          GetEventTicketsUsecase,
          GetEventTicketsUsecase
        >
    with $Provider<GetEventTicketsUsecase> {
  const GetEventTicketsUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getEventTicketsUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getEventTicketsUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetEventTicketsUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetEventTicketsUsecase create(Ref ref) {
    return getEventTicketsUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetEventTicketsUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetEventTicketsUsecase>(value),
    );
  }
}

String _$getEventTicketsUsecaseHash() =>
    r'f3ff3a1e5c302733457c97384e5628f6ab0f127f';
