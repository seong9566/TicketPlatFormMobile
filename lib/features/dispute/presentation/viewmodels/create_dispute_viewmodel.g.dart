// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_dispute_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CreateDisputeViewModel)
const createDisputeViewModelProvider = CreateDisputeViewModelProvider._();

final class CreateDisputeViewModelProvider
    extends $NotifierProvider<CreateDisputeViewModel, CreateDisputeState> {
  const CreateDisputeViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createDisputeViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createDisputeViewModelHash();

  @$internal
  @override
  CreateDisputeViewModel create() => CreateDisputeViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateDisputeState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateDisputeState>(value),
    );
  }
}

String _$createDisputeViewModelHash() =>
    r'1efe92173374701c0790e62c0c91757325a3ebf9';

abstract class _$CreateDisputeViewModel extends $Notifier<CreateDisputeState> {
  CreateDisputeState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<CreateDisputeState, CreateDisputeState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CreateDisputeState, CreateDisputeState>,
              CreateDisputeState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
