// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BalanceViewModel)
const balanceViewModelProvider = BalanceViewModelProvider._();

final class BalanceViewModelProvider
    extends $AsyncNotifierProvider<BalanceViewModel, BalanceEntity> {
  const BalanceViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'balanceViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$balanceViewModelHash();

  @$internal
  @override
  BalanceViewModel create() => BalanceViewModel();
}

String _$balanceViewModelHash() => r'99ec73e7842ea0639b8c7664c819b5d227966626';

abstract class _$BalanceViewModel extends $AsyncNotifier<BalanceEntity> {
  FutureOr<BalanceEntity> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<BalanceEntity>, BalanceEntity>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<BalanceEntity>, BalanceEntity>,
              AsyncValue<BalanceEntity>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
