// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PaymentViewModel)
const paymentViewModelProvider = PaymentViewModelProvider._();

final class PaymentViewModelProvider
    extends $NotifierProvider<PaymentViewModel, PaymentState> {
  const PaymentViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paymentViewModelProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paymentViewModelHash();

  @$internal
  @override
  PaymentViewModel create() => PaymentViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PaymentState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PaymentState>(value),
    );
  }
}

String _$paymentViewModelHash() => r'aed4efb3d0cbdb54cc3a5a3f9f1b9569c4755a8e';

abstract class _$PaymentViewModel extends $Notifier<PaymentState> {
  PaymentState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<PaymentState, PaymentState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PaymentState, PaymentState>,
              PaymentState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
