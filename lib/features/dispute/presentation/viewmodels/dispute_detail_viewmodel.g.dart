// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispute_detail_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DisputeDetailViewModel)
const disputeDetailViewModelProvider = DisputeDetailViewModelFamily._();

final class DisputeDetailViewModelProvider
    extends
        $AsyncNotifierProvider<DisputeDetailViewModel, DisputeDetailUiModel> {
  const DisputeDetailViewModelProvider._({
    required DisputeDetailViewModelFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'disputeDetailViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$disputeDetailViewModelHash();

  @override
  String toString() {
    return r'disputeDetailViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  DisputeDetailViewModel create() => DisputeDetailViewModel();

  @override
  bool operator ==(Object other) {
    return other is DisputeDetailViewModelProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$disputeDetailViewModelHash() =>
    r'311166b52adf73017705c714dd4b6a7bdaa49a6f';

final class DisputeDetailViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          DisputeDetailViewModel,
          AsyncValue<DisputeDetailUiModel>,
          DisputeDetailUiModel,
          FutureOr<DisputeDetailUiModel>,
          int
        > {
  const DisputeDetailViewModelFamily._()
    : super(
        retry: null,
        name: r'disputeDetailViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DisputeDetailViewModelProvider call(int disputeId) =>
      DisputeDetailViewModelProvider._(argument: disputeId, from: this);

  @override
  String toString() => r'disputeDetailViewModelProvider';
}

abstract class _$DisputeDetailViewModel
    extends $AsyncNotifier<DisputeDetailUiModel> {
  late final _$args = ref.$arg as int;
  int get disputeId => _$args;

  FutureOr<DisputeDetailUiModel> build(int disputeId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<AsyncValue<DisputeDetailUiModel>, DisputeDetailUiModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<DisputeDetailUiModel>,
                DisputeDetailUiModel
              >,
              AsyncValue<DisputeDetailUiModel>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
