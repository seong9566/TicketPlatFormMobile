// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BankAccountViewModel)
const bankAccountViewModelProvider = BankAccountViewModelProvider._();

final class BankAccountViewModelProvider
    extends $AsyncNotifierProvider<BankAccountViewModel, BankAccountState> {
  const BankAccountViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bankAccountViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bankAccountViewModelHash();

  @$internal
  @override
  BankAccountViewModel create() => BankAccountViewModel();
}

String _$bankAccountViewModelHash() =>
    r'4475c13e440655baca9f6942015432f1e3d9de88';

abstract class _$BankAccountViewModel extends $AsyncNotifier<BankAccountState> {
  FutureOr<BankAccountState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<BankAccountState>, BankAccountState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<BankAccountState>, BankAccountState>,
              AsyncValue<BankAccountState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
