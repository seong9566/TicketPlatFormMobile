// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TransactionHistoryViewModel)
const transactionHistoryViewModelProvider =
    TransactionHistoryViewModelFamily._();

final class TransactionHistoryViewModelProvider
    extends
        $AsyncNotifierProvider<
          TransactionHistoryViewModel,
          TransactionHistoryState
        > {
  const TransactionHistoryViewModelProvider._({
    required TransactionHistoryViewModelFamily super.from,
    required TransactionType super.argument,
  }) : super(
         retry: null,
         name: r'transactionHistoryViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$transactionHistoryViewModelHash();

  @override
  String toString() {
    return r'transactionHistoryViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  TransactionHistoryViewModel create() => TransactionHistoryViewModel();

  @override
  bool operator ==(Object other) {
    return other is TransactionHistoryViewModelProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$transactionHistoryViewModelHash() =>
    r'4d890f2710aa119434c5e4610cd80b819e479d2d';

final class TransactionHistoryViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          TransactionHistoryViewModel,
          AsyncValue<TransactionHistoryState>,
          TransactionHistoryState,
          FutureOr<TransactionHistoryState>,
          TransactionType
        > {
  const TransactionHistoryViewModelFamily._()
    : super(
        retry: null,
        name: r'transactionHistoryViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TransactionHistoryViewModelProvider call(TransactionType type) =>
      TransactionHistoryViewModelProvider._(argument: type, from: this);

  @override
  String toString() => r'transactionHistoryViewModelProvider';
}

abstract class _$TransactionHistoryViewModel
    extends $AsyncNotifier<TransactionHistoryState> {
  late final _$args = ref.$arg as TransactionType;
  TransactionType get type => _$args;

  FutureOr<TransactionHistoryState> build(TransactionType type);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<TransactionHistoryState>,
              TransactionHistoryState
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<TransactionHistoryState>,
                TransactionHistoryState
              >,
              AsyncValue<TransactionHistoryState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
