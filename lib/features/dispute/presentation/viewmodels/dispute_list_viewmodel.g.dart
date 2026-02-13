// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispute_list_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DisputeListViewModel)
const disputeListViewModelProvider = DisputeListViewModelProvider._();

final class DisputeListViewModelProvider
    extends $AsyncNotifierProvider<DisputeListViewModel, DisputeListState> {
  const DisputeListViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'disputeListViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$disputeListViewModelHash();

  @$internal
  @override
  DisputeListViewModel create() => DisputeListViewModel();
}

String _$disputeListViewModelHash() =>
    r'9768d9d5273e3044074d0be92dcbe90632481578';

abstract class _$DisputeListViewModel extends $AsyncNotifier<DisputeListState> {
  FutureOr<DisputeListState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<DisputeListState>, DisputeListState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<DisputeListState>, DisputeListState>,
              AsyncValue<DisputeListState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
