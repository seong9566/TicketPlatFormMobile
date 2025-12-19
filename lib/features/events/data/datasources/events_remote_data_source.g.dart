// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_remote_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(eventsRemoteDataSource)
const eventsRemoteDataSourceProvider = EventsRemoteDataSourceProvider._();

final class EventsRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          EventsRemoteDataSource,
          EventsRemoteDataSource,
          EventsRemoteDataSource
        >
    with $Provider<EventsRemoteDataSource> {
  const EventsRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'eventsRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$eventsRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<EventsRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EventsRemoteDataSource create(Ref ref) {
    return eventsRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EventsRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EventsRemoteDataSource>(value),
    );
  }
}

String _$eventsRemoteDataSourceHash() =>
    r'c9fecf0af5ca576f465144eedfa2d67b753ae640';
