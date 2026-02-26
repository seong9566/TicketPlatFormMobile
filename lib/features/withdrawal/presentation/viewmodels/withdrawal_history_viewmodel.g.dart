// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal_history_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(WithdrawalHistoryViewModel)
const withdrawalHistoryViewModelProvider =
    WithdrawalHistoryViewModelProvider._();

final class WithdrawalHistoryViewModelProvider
    extends
        $AsyncNotifierProvider<
          WithdrawalHistoryViewModel,
          WithdrawalHistoryState
        > {
  const WithdrawalHistoryViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'withdrawalHistoryViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$withdrawalHistoryViewModelHash();

  @$internal
  @override
  WithdrawalHistoryViewModel create() => WithdrawalHistoryViewModel();
}

String _$withdrawalHistoryViewModelHash() =>
    r'7e5c52822df5b1692d34b97782d20a28feee6318';

abstract class _$WithdrawalHistoryViewModel
    extends $AsyncNotifier<WithdrawalHistoryState> {
  FutureOr<WithdrawalHistoryState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<AsyncValue<WithdrawalHistoryState>, WithdrawalHistoryState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<WithdrawalHistoryState>,
                WithdrawalHistoryState
              >,
              AsyncValue<WithdrawalHistoryState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
