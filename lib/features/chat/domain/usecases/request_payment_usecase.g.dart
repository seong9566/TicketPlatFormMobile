// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_payment_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(requestPaymentUsecase)
const requestPaymentUsecaseProvider = RequestPaymentUsecaseProvider._();

final class RequestPaymentUsecaseProvider
    extends
        $FunctionalProvider<
          RequestPaymentUsecase,
          RequestPaymentUsecase,
          RequestPaymentUsecase
        >
    with $Provider<RequestPaymentUsecase> {
  const RequestPaymentUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'requestPaymentUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$requestPaymentUsecaseHash();

  @$internal
  @override
  $ProviderElement<RequestPaymentUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RequestPaymentUsecase create(Ref ref) {
    return requestPaymentUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RequestPaymentUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RequestPaymentUsecase>(value),
    );
  }
}

String _$requestPaymentUsecaseHash() =>
    r'84439635cd30d56988175e93c5af2308ff1008e3';
