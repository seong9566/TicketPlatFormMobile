// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticketing_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TicketingViewModel)
const ticketingViewModelProvider = TicketingViewModelFamily._();

final class TicketingViewModelProvider
    extends $AsyncNotifierProvider<TicketingViewModel, TicketingState> {
  const TicketingViewModelProvider._({
    required TicketingViewModelFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'ticketingViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$ticketingViewModelHash();

  @override
  String toString() {
    return r'ticketingViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  TicketingViewModel create() => TicketingViewModel();

  @override
  bool operator ==(Object other) {
    return other is TicketingViewModelProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$ticketingViewModelHash() =>
    r'145fa4bf1c0fc43d3b0928c40a757fde7a9543cd';

final class TicketingViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          TicketingViewModel,
          AsyncValue<TicketingState>,
          TicketingState,
          FutureOr<TicketingState>,
          String
        > {
  const TicketingViewModelFamily._()
    : super(
        retry: null,
        name: r'ticketingViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TicketingViewModelProvider call(String performanceId) =>
      TicketingViewModelProvider._(argument: performanceId, from: this);

  @override
  String toString() => r'ticketingViewModelProvider';
}

abstract class _$TicketingViewModel extends $AsyncNotifier<TicketingState> {
  late final _$args = ref.$arg as String;
  String get performanceId => _$args;

  FutureOr<TicketingState> build(String performanceId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<TicketingState>, TicketingState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<TicketingState>, TicketingState>,
              AsyncValue<TicketingState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
