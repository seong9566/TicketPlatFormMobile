// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sell_seat_info_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SellSeatInfoViewModel)
const sellSeatInfoViewModelProvider = SellSeatInfoViewModelFamily._();

final class SellSeatInfoViewModelProvider
    extends $AsyncNotifierProvider<SellSeatInfoViewModel, SellSeatInfoState> {
  const SellSeatInfoViewModelProvider._({
    required SellSeatInfoViewModelFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'sellSeatInfoViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$sellSeatInfoViewModelHash();

  @override
  String toString() {
    return r'sellSeatInfoViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  SellSeatInfoViewModel create() => SellSeatInfoViewModel();

  @override
  bool operator ==(Object other) {
    return other is SellSeatInfoViewModelProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$sellSeatInfoViewModelHash() =>
    r'5785f13b48cfc3de2fbd55afde39222c0c678cfe';

final class SellSeatInfoViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          SellSeatInfoViewModel,
          AsyncValue<SellSeatInfoState>,
          SellSeatInfoState,
          FutureOr<SellSeatInfoState>,
          int
        > {
  const SellSeatInfoViewModelFamily._()
    : super(
        retry: null,
        name: r'sellSeatInfoViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SellSeatInfoViewModelProvider call(int eventId) =>
      SellSeatInfoViewModelProvider._(argument: eventId, from: this);

  @override
  String toString() => r'sellSeatInfoViewModelProvider';
}

abstract class _$SellSeatInfoViewModel
    extends $AsyncNotifier<SellSeatInfoState> {
  late final _$args = ref.$arg as int;
  int get eventId => _$args;

  FutureOr<SellSeatInfoState> build(int eventId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref as $Ref<AsyncValue<SellSeatInfoState>, SellSeatInfoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<SellSeatInfoState>, SellSeatInfoState>,
              AsyncValue<SellSeatInfoState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
