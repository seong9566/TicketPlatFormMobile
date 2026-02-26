// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal_providers_di.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(withdrawalRemoteDataSource)
const withdrawalRemoteDataSourceProvider =
    WithdrawalRemoteDataSourceProvider._();

final class WithdrawalRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          WithdrawalRemoteDataSource,
          WithdrawalRemoteDataSource,
          WithdrawalRemoteDataSource
        >
    with $Provider<WithdrawalRemoteDataSource> {
  const WithdrawalRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'withdrawalRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$withdrawalRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<WithdrawalRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  WithdrawalRemoteDataSource create(Ref ref) {
    return withdrawalRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WithdrawalRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WithdrawalRemoteDataSource>(value),
    );
  }
}

String _$withdrawalRemoteDataSourceHash() =>
    r'91373eab2ba9445d7e299127cf762be7efdbdcb9';

@ProviderFor(withdrawalRepository)
const withdrawalRepositoryProvider = WithdrawalRepositoryProvider._();

final class WithdrawalRepositoryProvider
    extends
        $FunctionalProvider<
          WithdrawalRepository,
          WithdrawalRepository,
          WithdrawalRepository
        >
    with $Provider<WithdrawalRepository> {
  const WithdrawalRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'withdrawalRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$withdrawalRepositoryHash();

  @$internal
  @override
  $ProviderElement<WithdrawalRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  WithdrawalRepository create(Ref ref) {
    return withdrawalRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WithdrawalRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WithdrawalRepository>(value),
    );
  }
}

String _$withdrawalRepositoryHash() =>
    r'26450e8039e2112cc64439b01c11396b761faa64';

@ProviderFor(getBalanceUsecase)
const getBalanceUsecaseProvider = GetBalanceUsecaseProvider._();

final class GetBalanceUsecaseProvider
    extends
        $FunctionalProvider<
          GetBalanceUsecase,
          GetBalanceUsecase,
          GetBalanceUsecase
        >
    with $Provider<GetBalanceUsecase> {
  const GetBalanceUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getBalanceUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getBalanceUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetBalanceUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetBalanceUsecase create(Ref ref) {
    return getBalanceUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetBalanceUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetBalanceUsecase>(value),
    );
  }
}

String _$getBalanceUsecaseHash() => r'4534d9096aa5f5b17e6873c5eb14a2dd6349089f';

@ProviderFor(getBalanceHistoryUsecase)
const getBalanceHistoryUsecaseProvider = GetBalanceHistoryUsecaseProvider._();

final class GetBalanceHistoryUsecaseProvider
    extends
        $FunctionalProvider<
          GetBalanceHistoryUsecase,
          GetBalanceHistoryUsecase,
          GetBalanceHistoryUsecase
        >
    with $Provider<GetBalanceHistoryUsecase> {
  const GetBalanceHistoryUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getBalanceHistoryUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getBalanceHistoryUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetBalanceHistoryUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetBalanceHistoryUsecase create(Ref ref) {
    return getBalanceHistoryUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetBalanceHistoryUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetBalanceHistoryUsecase>(value),
    );
  }
}

String _$getBalanceHistoryUsecaseHash() =>
    r'a8a9ea33b5d470c6e0cdab7a2a5d0d7311d3ce57';

@ProviderFor(requestWithdrawalUsecase)
const requestWithdrawalUsecaseProvider = RequestWithdrawalUsecaseProvider._();

final class RequestWithdrawalUsecaseProvider
    extends
        $FunctionalProvider<
          RequestWithdrawalUsecase,
          RequestWithdrawalUsecase,
          RequestWithdrawalUsecase
        >
    with $Provider<RequestWithdrawalUsecase> {
  const RequestWithdrawalUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'requestWithdrawalUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$requestWithdrawalUsecaseHash();

  @$internal
  @override
  $ProviderElement<RequestWithdrawalUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RequestWithdrawalUsecase create(Ref ref) {
    return requestWithdrawalUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RequestWithdrawalUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RequestWithdrawalUsecase>(value),
    );
  }
}

String _$requestWithdrawalUsecaseHash() =>
    r'1a370be103ee932f56336a8a91c8f446cd5fb00f';

@ProviderFor(getWithdrawalHistoryUsecase)
const getWithdrawalHistoryUsecaseProvider =
    GetWithdrawalHistoryUsecaseProvider._();

final class GetWithdrawalHistoryUsecaseProvider
    extends
        $FunctionalProvider<
          GetWithdrawalHistoryUsecase,
          GetWithdrawalHistoryUsecase,
          GetWithdrawalHistoryUsecase
        >
    with $Provider<GetWithdrawalHistoryUsecase> {
  const GetWithdrawalHistoryUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getWithdrawalHistoryUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getWithdrawalHistoryUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetWithdrawalHistoryUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetWithdrawalHistoryUsecase create(Ref ref) {
    return getWithdrawalHistoryUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetWithdrawalHistoryUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetWithdrawalHistoryUsecase>(value),
    );
  }
}

String _$getWithdrawalHistoryUsecaseHash() =>
    r'df06532344ab0447d078b29eada44966f903e8af';

@ProviderFor(cancelWithdrawalUsecase)
const cancelWithdrawalUsecaseProvider = CancelWithdrawalUsecaseProvider._();

final class CancelWithdrawalUsecaseProvider
    extends
        $FunctionalProvider<
          CancelWithdrawalUsecase,
          CancelWithdrawalUsecase,
          CancelWithdrawalUsecase
        >
    with $Provider<CancelWithdrawalUsecase> {
  const CancelWithdrawalUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cancelWithdrawalUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cancelWithdrawalUsecaseHash();

  @$internal
  @override
  $ProviderElement<CancelWithdrawalUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CancelWithdrawalUsecase create(Ref ref) {
    return cancelWithdrawalUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CancelWithdrawalUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CancelWithdrawalUsecase>(value),
    );
  }
}

String _$cancelWithdrawalUsecaseHash() =>
    r'371e55e192c663d9de03df01c5f5df11d87ef9e6';
