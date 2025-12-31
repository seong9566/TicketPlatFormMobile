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
    required String super.argument,
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
    r'8e47e9b5e42f7b47ad254096a8f5ca7edd371bf5';

final class TicketDetailViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          TicketDetailViewModel,
          AsyncValue<TicketDetailState>,
          TicketDetailState,
          FutureOr<TicketDetailState>,
          String
        > {
  const TicketDetailViewModelFamily._()
    : super(
        retry: null,
        name: r'ticketDetailViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TicketDetailViewModelProvider call(String listingId) =>
      TicketDetailViewModelProvider._(argument: listingId, from: this);

  @override
  String toString() => r'ticketDetailViewModelProvider';
}

abstract class _$TicketDetailViewModel
    extends $AsyncNotifier<TicketDetailState> {
  late final _$args = ref.$arg as String;
  String get listingId => _$args;

  FutureOr<TicketDetailState> build(String listingId);
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
