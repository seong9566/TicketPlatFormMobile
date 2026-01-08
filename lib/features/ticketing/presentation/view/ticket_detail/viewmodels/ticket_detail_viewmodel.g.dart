// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_detail_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TicketDetailViewModel)
const ticketDetailViewModelProvider = TicketDetailViewModelFamily._();

final class TicketDetailViewModelProvider
    extends $AsyncNotifierProvider<TicketDetailViewModel, TicketDetailState> {
  const TicketDetailViewModelProvider._({
    required TicketDetailViewModelFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'ticketDetailViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$ticketDetailViewModelHash();

  @override
  String toString() {
    return r'ticketDetailViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  TicketDetailViewModel create() => TicketDetailViewModel();

  @override
  bool operator ==(Object other) {
    return other is TicketDetailViewModelProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$ticketDetailViewModelHash() =>
    r'e54134aec576b699b359097d4e9f2adccbe852a3';

final class TicketDetailViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          TicketDetailViewModel,
          AsyncValue<TicketDetailState>,
          TicketDetailState,
          FutureOr<TicketDetailState>,
          int
        > {
  const TicketDetailViewModelFamily._()
    : super(
        retry: null,
        name: r'ticketDetailViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TicketDetailViewModelProvider call(int ticketId) =>
      TicketDetailViewModelProvider._(argument: ticketId, from: this);

  @override
  String toString() => r'ticketDetailViewModelProvider';
}

abstract class _$TicketDetailViewModel
    extends $AsyncNotifier<TicketDetailState> {
  late final _$args = ref.$arg as int;
  int get ticketId => _$args;

  FutureOr<TicketDetailState> build(int ticketId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref as $Ref<AsyncValue<TicketDetailState>, TicketDetailState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<TicketDetailState>, TicketDetailState>,
              AsyncValue<TicketDetailState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
