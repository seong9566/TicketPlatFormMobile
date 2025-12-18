// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EventViewModel)
const eventViewModelProvider = EventViewModelFamily._();

final class EventViewModelProvider
    extends $AsyncNotifierProvider<EventViewModel, EventState> {
  const EventViewModelProvider._({
    required EventViewModelFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'eventViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$eventViewModelHash();

  @override
  String toString() {
    return r'eventViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  EventViewModel create() => EventViewModel();

  @override
  bool operator ==(Object other) {
    return other is EventViewModelProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$eventViewModelHash() => r'db5982292aa6966438c293a64579ef823cd15224';

final class EventViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          EventViewModel,
          AsyncValue<EventState>,
          EventState,
          FutureOr<EventState>,
          String
        > {
  const EventViewModelFamily._()
    : super(
        retry: null,
        name: r'eventViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EventViewModelProvider call(String eventId) =>
      EventViewModelProvider._(argument: eventId, from: this);

  @override
  String toString() => r'eventViewModelProvider';
}

abstract class _$EventViewModel extends $AsyncNotifier<EventState> {
  late final _$args = ref.$arg as String;
  String get eventId => _$args;

  FutureOr<EventState> build(String eventId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<EventState>, EventState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<EventState>, EventState>,
              AsyncValue<EventState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
