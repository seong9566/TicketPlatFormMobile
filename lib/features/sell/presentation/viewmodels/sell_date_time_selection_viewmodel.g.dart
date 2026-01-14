// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sell_date_time_selection_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SellDateTimeSelectionViewModel)
const sellDateTimeSelectionViewModelProvider =
    SellDateTimeSelectionViewModelFamily._();

final class SellDateTimeSelectionViewModelProvider
    extends
        $AsyncNotifierProvider<
          SellDateTimeSelectionViewModel,
          SellDateTimeSelectionState
        > {
  const SellDateTimeSelectionViewModelProvider._({
    required SellDateTimeSelectionViewModelFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'sellDateTimeSelectionViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$sellDateTimeSelectionViewModelHash();

  @override
  String toString() {
    return r'sellDateTimeSelectionViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  SellDateTimeSelectionViewModel create() => SellDateTimeSelectionViewModel();

  @override
  bool operator ==(Object other) {
    return other is SellDateTimeSelectionViewModelProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$sellDateTimeSelectionViewModelHash() =>
    r'1279fcbb69f8566e25114fc15e4a2dda2c1210cb';

final class SellDateTimeSelectionViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          SellDateTimeSelectionViewModel,
          AsyncValue<SellDateTimeSelectionState>,
          SellDateTimeSelectionState,
          FutureOr<SellDateTimeSelectionState>,
          int
        > {
  const SellDateTimeSelectionViewModelFamily._()
    : super(
        retry: null,
        name: r'sellDateTimeSelectionViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SellDateTimeSelectionViewModelProvider call(int eventId) =>
      SellDateTimeSelectionViewModelProvider._(argument: eventId, from: this);

  @override
  String toString() => r'sellDateTimeSelectionViewModelProvider';
}

abstract class _$SellDateTimeSelectionViewModel
    extends $AsyncNotifier<SellDateTimeSelectionState> {
  late final _$args = ref.$arg as int;
  int get eventId => _$args;

  FutureOr<SellDateTimeSelectionState> build(int eventId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<SellDateTimeSelectionState>,
              SellDateTimeSelectionState
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<SellDateTimeSelectionState>,
                SellDateTimeSelectionState
              >,
              AsyncValue<SellDateTimeSelectionState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
