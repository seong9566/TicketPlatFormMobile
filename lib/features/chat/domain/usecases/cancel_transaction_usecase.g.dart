// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_transaction_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cancelTransactionUsecase)
const cancelTransactionUsecaseProvider = CancelTransactionUsecaseProvider._();

final class CancelTransactionUsecaseProvider
    extends
        $FunctionalProvider<
          CancelTransactionUsecase,
          CancelTransactionUsecase,
          CancelTransactionUsecase
        >
    with $Provider<CancelTransactionUsecase> {
  const CancelTransactionUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cancelTransactionUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cancelTransactionUsecaseHash();

  @$internal
  @override
  $ProviderElement<CancelTransactionUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CancelTransactionUsecase create(Ref ref) {
    return cancelTransactionUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CancelTransactionUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CancelTransactionUsecase>(value),
    );
  }
}

String _$cancelTransactionUsecaseHash() =>
    r'bc4d3eb7020a096ec5e89cbb2a791237cf37afb3';
