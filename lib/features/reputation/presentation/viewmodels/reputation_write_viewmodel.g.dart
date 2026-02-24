// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reputation_write_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ReputationWriteViewModel)
const reputationWriteViewModelProvider = ReputationWriteViewModelProvider._();

final class ReputationWriteViewModelProvider
    extends $NotifierProvider<ReputationWriteViewModel, ReputationWriteState> {
  const ReputationWriteViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reputationWriteViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reputationWriteViewModelHash();

  @$internal
  @override
  ReputationWriteViewModel create() => ReputationWriteViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ReputationWriteState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ReputationWriteState>(value),
    );
  }
}

String _$reputationWriteViewModelHash() =>
    r'c52e6e4e5599469bb21b0f0ffd1f7d29c8311125';

abstract class _$ReputationWriteViewModel
    extends $Notifier<ReputationWriteState> {
  ReputationWriteState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ReputationWriteState, ReputationWriteState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ReputationWriteState, ReputationWriteState>,
              ReputationWriteState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
