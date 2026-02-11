// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unread_badge_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UnreadBadgeViewModel)
const unreadBadgeViewModelProvider = UnreadBadgeViewModelProvider._();

final class UnreadBadgeViewModelProvider
    extends $NotifierProvider<UnreadBadgeViewModel, int> {
  const UnreadBadgeViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'unreadBadgeViewModelProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$unreadBadgeViewModelHash();

  @$internal
  @override
  UnreadBadgeViewModel create() => UnreadBadgeViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$unreadBadgeViewModelHash() =>
    r'0a3bfdfa070f8a6303dc5831b085d8a296cc2bf3';

abstract class _$UnreadBadgeViewModel extends $Notifier<int> {
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
