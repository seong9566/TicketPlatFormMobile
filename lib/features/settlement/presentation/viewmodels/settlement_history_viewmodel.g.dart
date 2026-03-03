// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settlement_history_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SettlementHistoryViewModel)
const settlementHistoryViewModelProvider =
    SettlementHistoryViewModelProvider._();

final class SettlementHistoryViewModelProvider
    extends
        $AsyncNotifierProvider<
          SettlementHistoryViewModel,
          SettlementHistoryState
        > {
  const SettlementHistoryViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'settlementHistoryViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$settlementHistoryViewModelHash();

  @$internal
  @override
  SettlementHistoryViewModel create() => SettlementHistoryViewModel();
}

String _$settlementHistoryViewModelHash() =>
    r'9b90f047176d61236935a6a835ac1c65a0cb8765';

abstract class _$SettlementHistoryViewModel
    extends $AsyncNotifier<SettlementHistoryState> {
  FutureOr<SettlementHistoryState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<AsyncValue<SettlementHistoryState>, SettlementHistoryState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<SettlementHistoryState>,
                SettlementHistoryState
              >,
              AsyncValue<SettlementHistoryState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
