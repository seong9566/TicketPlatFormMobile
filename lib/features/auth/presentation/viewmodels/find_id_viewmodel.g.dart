// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_id_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FindIdViewModel)
const findIdViewModelProvider = FindIdViewModelProvider._();

final class FindIdViewModelProvider
    extends $NotifierProvider<FindIdViewModel, FindIdState> {
  const FindIdViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'findIdViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$findIdViewModelHash();

  @$internal
  @override
  FindIdViewModel create() => FindIdViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FindIdState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FindIdState>(value),
    );
  }
}

String _$findIdViewModelHash() => r'7ac1c2ea5e3b3d8faf43aa30d3069d04ed53f8e9';

abstract class _$FindIdViewModel extends $Notifier<FindIdState> {
  FindIdState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<FindIdState, FindIdState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FindIdState, FindIdState>,
              FindIdState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
