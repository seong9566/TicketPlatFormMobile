// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sell_event_selection_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SellEventSelectionViewModel)
const sellEventSelectionViewModelProvider =
    SellEventSelectionViewModelFamily._();

final class SellEventSelectionViewModelProvider
    extends
        $AsyncNotifierProvider<
          SellEventSelectionViewModel,
          SellEventSelectionState
        > {
  const SellEventSelectionViewModelProvider._({
    required SellEventSelectionViewModelFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'sellEventSelectionViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$sellEventSelectionViewModelHash();

  @override
  String toString() {
    return r'sellEventSelectionViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  SellEventSelectionViewModel create() => SellEventSelectionViewModel();

  @override
  bool operator ==(Object other) {
    return other is SellEventSelectionViewModelProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$sellEventSelectionViewModelHash() =>
    r'b24179eaa786eaf9fd10da9ef2d89d775f79c19e';

final class SellEventSelectionViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          SellEventSelectionViewModel,
          AsyncValue<SellEventSelectionState>,
          SellEventSelectionState,
          FutureOr<SellEventSelectionState>,
          int
        > {
  const SellEventSelectionViewModelFamily._()
    : super(
        retry: null,
        name: r'sellEventSelectionViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SellEventSelectionViewModelProvider call(int categoryId) =>
      SellEventSelectionViewModelProvider._(argument: categoryId, from: this);

  @override
  String toString() => r'sellEventSelectionViewModelProvider';
}

abstract class _$SellEventSelectionViewModel
    extends $AsyncNotifier<SellEventSelectionState> {
  late final _$args = ref.$arg as int;
  int get categoryId => _$args;

  FutureOr<SellEventSelectionState> build(int categoryId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<SellEventSelectionState>,
              SellEventSelectionState
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<SellEventSelectionState>,
                SellEventSelectionState
              >,
              AsyncValue<SellEventSelectionState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
