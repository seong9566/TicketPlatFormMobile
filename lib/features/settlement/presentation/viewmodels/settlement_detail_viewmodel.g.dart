// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settlement_detail_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SettlementDetailViewModel)
const settlementDetailViewModelProvider = SettlementDetailViewModelFamily._();

final class SettlementDetailViewModelProvider
    extends
        $AsyncNotifierProvider<
          SettlementDetailViewModel,
          SettlementDetailEntity
        > {
  const SettlementDetailViewModelProvider._({
    required SettlementDetailViewModelFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'settlementDetailViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$settlementDetailViewModelHash();

  @override
  String toString() {
    return r'settlementDetailViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  SettlementDetailViewModel create() => SettlementDetailViewModel();

  @override
  bool operator ==(Object other) {
    return other is SettlementDetailViewModelProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$settlementDetailViewModelHash() =>
    r'0ad92023b55fe3600c4a89c79059d15d526803f7';

final class SettlementDetailViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          SettlementDetailViewModel,
          AsyncValue<SettlementDetailEntity>,
          SettlementDetailEntity,
          FutureOr<SettlementDetailEntity>,
          int
        > {
  const SettlementDetailViewModelFamily._()
    : super(
        retry: null,
        name: r'settlementDetailViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SettlementDetailViewModelProvider call(int settlementId) =>
      SettlementDetailViewModelProvider._(argument: settlementId, from: this);

  @override
  String toString() => r'settlementDetailViewModelProvider';
}

abstract class _$SettlementDetailViewModel
    extends $AsyncNotifier<SettlementDetailEntity> {
  late final _$args = ref.$arg as int;
  int get settlementId => _$args;

  FutureOr<SettlementDetailEntity> build(int settlementId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<AsyncValue<SettlementDetailEntity>, SettlementDetailEntity>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<SettlementDetailEntity>,
                SettlementDetailEntity
              >,
              AsyncValue<SettlementDetailEntity>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
