// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_password_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FindPasswordViewModel)
const findPasswordViewModelProvider = FindPasswordViewModelProvider._();

final class FindPasswordViewModelProvider
    extends $NotifierProvider<FindPasswordViewModel, FindPasswordState> {
  const FindPasswordViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'findPasswordViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$findPasswordViewModelHash();

  @$internal
  @override
  FindPasswordViewModel create() => FindPasswordViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FindPasswordState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FindPasswordState>(value),
    );
  }
}

String _$findPasswordViewModelHash() =>
    r'232295c711a0a5cfe4060c441202a53b32a2633a';

abstract class _$FindPasswordViewModel extends $Notifier<FindPasswordState> {
  FindPasswordState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<FindPasswordState, FindPasswordState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FindPasswordState, FindPasswordState>,
              FindPasswordState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
