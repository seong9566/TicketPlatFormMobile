// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal_request_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(WithdrawalRequestViewModel)
const withdrawalRequestViewModelProvider =
    WithdrawalRequestViewModelProvider._();

final class WithdrawalRequestViewModelProvider
    extends
        $NotifierProvider<WithdrawalRequestViewModel, WithdrawalRequestState> {
  const WithdrawalRequestViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'withdrawalRequestViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$withdrawalRequestViewModelHash();

  @$internal
  @override
  WithdrawalRequestViewModel create() => WithdrawalRequestViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WithdrawalRequestState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WithdrawalRequestState>(value),
    );
  }
}

String _$withdrawalRequestViewModelHash() =>
    r'a53b6a6c3726600e79a58214d5ba394eb65390bd';

abstract class _$WithdrawalRequestViewModel
    extends $Notifier<WithdrawalRequestState> {
  WithdrawalRequestState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<WithdrawalRequestState, WithdrawalRequestState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<WithdrawalRequestState, WithdrawalRequestState>,
              WithdrawalRequestState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
