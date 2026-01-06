// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_tab_view.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CurrentTabIndex)
const currentTabIndexProvider = CurrentTabIndexProvider._();

final class CurrentTabIndexProvider
    extends $NotifierProvider<CurrentTabIndex, int> {
  const CurrentTabIndexProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentTabIndexProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentTabIndexHash();

  @$internal
  @override
  CurrentTabIndex create() => CurrentTabIndex();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$currentTabIndexHash() => r'0865313e324e4add326e82c4f61619a6c1ace7f6';

abstract class _$CurrentTabIndex extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
