// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_ticket_list_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EventTicketListViewModel)
const eventTicketListViewModelProvider = EventTicketListViewModelFamily._();

final class EventTicketListViewModelProvider
    extends
        $AsyncNotifierProvider<EventTicketListViewModel, EventTicketListState> {
  const EventTicketListViewModelProvider._({
    required EventTicketListViewModelFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'eventTicketListViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$eventTicketListViewModelHash();

  @override
  String toString() {
    return r'eventTicketListViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  EventTicketListViewModel create() => EventTicketListViewModel();

  @override
  bool operator ==(Object other) {
    return other is EventTicketListViewModelProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$eventTicketListViewModelHash() =>
    r'f32ce52cf1bc059b0758ab10764ca9c8b5d87b64';

final class EventTicketListViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          EventTicketListViewModel,
          AsyncValue<EventTicketListState>,
          EventTicketListState,
          FutureOr<EventTicketListState>,
          int
        > {
  const EventTicketListViewModelFamily._()
    : super(
        retry: null,
        name: r'eventTicketListViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EventTicketListViewModelProvider call(int eventId) =>
      EventTicketListViewModelProvider._(argument: eventId, from: this);

  @override
  String toString() => r'eventTicketListViewModelProvider';
}

abstract class _$EventTicketListViewModel
    extends $AsyncNotifier<EventTicketListState> {
  late final _$args = ref.$arg as int;
  int get eventId => _$args;

  FutureOr<EventTicketListState> build(int eventId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<AsyncValue<EventTicketListState>, EventTicketListState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<EventTicketListState>,
                EventTicketListState
              >,
              AsyncValue<EventTicketListState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
