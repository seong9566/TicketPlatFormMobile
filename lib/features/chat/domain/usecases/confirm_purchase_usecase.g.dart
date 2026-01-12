// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_purchase_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(confirmPurchaseUsecase)
const confirmPurchaseUsecaseProvider = ConfirmPurchaseUsecaseProvider._();

final class ConfirmPurchaseUsecaseProvider
    extends
        $FunctionalProvider<
          ConfirmPurchaseUsecase,
          ConfirmPurchaseUsecase,
          ConfirmPurchaseUsecase
        >
    with $Provider<ConfirmPurchaseUsecase> {
  const ConfirmPurchaseUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'confirmPurchaseUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$confirmPurchaseUsecaseHash();

  @$internal
  @override
  $ProviderElement<ConfirmPurchaseUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ConfirmPurchaseUsecase create(Ref ref) {
    return confirmPurchaseUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ConfirmPurchaseUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ConfirmPurchaseUsecase>(value),
    );
  }
}

String _$confirmPurchaseUsecaseHash() =>
    r'a7bac10c47dd8b7672758fbb8dd3bd683d4d608d';
