// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(transactionHistoryRepository)
const transactionHistoryRepositoryProvider =
    TransactionHistoryRepositoryProvider._();

final class TransactionHistoryRepositoryProvider
    extends
        $FunctionalProvider<
          TransactionHistoryRepository,
          TransactionHistoryRepository,
          TransactionHistoryRepository
        >
    with $Provider<TransactionHistoryRepository> {
  const TransactionHistoryRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transactionHistoryRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$transactionHistoryRepositoryHash();

  @$internal
  @override
  $ProviderElement<TransactionHistoryRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TransactionHistoryRepository create(Ref ref) {
    return transactionHistoryRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TransactionHistoryRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TransactionHistoryRepository>(value),
    );
  }
}

String _$transactionHistoryRepositoryHash() =>
    r'7fe08a834091a1752051cce96245c169f1df079a';
