// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EventsViewModel)
const eventsViewModelProvider = EventsViewModelFamily._();

final class EventsViewModelProvider
    extends $AsyncNotifierProvider<EventsViewModel, EventsState> {
  const EventsViewModelProvider._({
    required EventsViewModelFamily super.from,
    required String? super.argument,
  }) : super(
         retry: null,
         name: r'eventsViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$eventsViewModelHash();

  @override
  String toString() {
    return r'eventsViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  EventsViewModel create() => EventsViewModel();

  @override
  bool operator ==(Object other) {
    return other is EventsViewModelProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$eventsViewModelHash() => r'befc3df47538ff427349e0f0efc6561bc14344e6';

final class EventsViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          EventsViewModel,
          AsyncValue<EventsState>,
          EventsState,
          FutureOr<EventsState>,
          String?
        > {
  const EventsViewModelFamily._()
    : super(
        retry: null,
        name: r'eventsViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EventsViewModelProvider call({String? initialCategory}) =>
      EventsViewModelProvider._(argument: initialCategory, from: this);

  @override
  String toString() => r'eventsViewModelProvider';
}

abstract class _$EventsViewModel extends $AsyncNotifier<EventsState> {
  late final _$args = ref.$arg as String?;
  String? get initialCategory => _$args;

  FutureOr<EventsState> build({String? initialCategory});
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(initialCategory: _$args);
    final ref = this.ref as $Ref<AsyncValue<EventsState>, EventsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<EventsState>, EventsState>,
              AsyncValue<EventsState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
