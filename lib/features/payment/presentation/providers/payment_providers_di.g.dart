// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_providers_di.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(paymentRemoteDataSource)
const paymentRemoteDataSourceProvider = PaymentRemoteDataSourceProvider._();

final class PaymentRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          PaymentRemoteDataSource,
          PaymentRemoteDataSource,
          PaymentRemoteDataSource
        >
    with $Provider<PaymentRemoteDataSource> {
  const PaymentRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paymentRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paymentRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<PaymentRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PaymentRemoteDataSource create(Ref ref) {
    return paymentRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PaymentRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PaymentRemoteDataSource>(value),
    );
  }
}

String _$paymentRemoteDataSourceHash() =>
    r'32ad4f53614a61343711e9033d04dee019345435';

@ProviderFor(paymentRepository)
const paymentRepositoryProvider = PaymentRepositoryProvider._();

final class PaymentRepositoryProvider
    extends
        $FunctionalProvider<
          PaymentRepository,
          PaymentRepository,
          PaymentRepository
        >
    with $Provider<PaymentRepository> {
  const PaymentRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paymentRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paymentRepositoryHash();

  @$internal
  @override
  $ProviderElement<PaymentRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PaymentRepository create(Ref ref) {
    return paymentRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PaymentRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PaymentRepository>(value),
    );
  }
}

String _$paymentRepositoryHash() => r'01c84e7de9a74dedc010e4b60d2e5d5352e7131b';

@ProviderFor(requestPaymentUseCase)
const requestPaymentUseCaseProvider = RequestPaymentUseCaseProvider._();

final class RequestPaymentUseCaseProvider
    extends
        $FunctionalProvider<
          RequestPaymentUseCase,
          RequestPaymentUseCase,
          RequestPaymentUseCase
        >
    with $Provider<RequestPaymentUseCase> {
  const RequestPaymentUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'requestPaymentUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$requestPaymentUseCaseHash();

  @$internal
  @override
  $ProviderElement<RequestPaymentUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RequestPaymentUseCase create(Ref ref) {
    return requestPaymentUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RequestPaymentUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RequestPaymentUseCase>(value),
    );
  }
}

String _$requestPaymentUseCaseHash() =>
    r'bfd469059f32fe88af3954ed2b8e5e7fc1f3ba3a';

@ProviderFor(confirmPaymentUseCase)
const confirmPaymentUseCaseProvider = ConfirmPaymentUseCaseProvider._();

final class ConfirmPaymentUseCaseProvider
    extends
        $FunctionalProvider<
          ConfirmPaymentUseCase,
          ConfirmPaymentUseCase,
          ConfirmPaymentUseCase
        >
    with $Provider<ConfirmPaymentUseCase> {
  const ConfirmPaymentUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'confirmPaymentUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$confirmPaymentUseCaseHash();

  @$internal
  @override
  $ProviderElement<ConfirmPaymentUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ConfirmPaymentUseCase create(Ref ref) {
    return confirmPaymentUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ConfirmPaymentUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ConfirmPaymentUseCase>(value),
    );
  }
}

String _$confirmPaymentUseCaseHash() =>
    r'dc8412d1276eb1d65309940bba03dc38b9fe04a6';

@ProviderFor(cancelPaymentUseCase)
const cancelPaymentUseCaseProvider = CancelPaymentUseCaseProvider._();

final class CancelPaymentUseCaseProvider
    extends
        $FunctionalProvider<
          CancelPaymentUseCase,
          CancelPaymentUseCase,
          CancelPaymentUseCase
        >
    with $Provider<CancelPaymentUseCase> {
  const CancelPaymentUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cancelPaymentUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cancelPaymentUseCaseHash();

  @$internal
  @override
  $ProviderElement<CancelPaymentUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CancelPaymentUseCase create(Ref ref) {
    return cancelPaymentUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CancelPaymentUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CancelPaymentUseCase>(value),
    );
  }
}

String _$cancelPaymentUseCaseHash() =>
    r'c02225638bb7c15529fc50dd765c5b50fab11591';
