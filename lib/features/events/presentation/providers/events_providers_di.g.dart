// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_providers_di.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(eventsRepository)
const eventsRepositoryProvider = EventsRepositoryProvider._();

final class EventsRepositoryProvider
    extends
        $FunctionalProvider<
          EventsRepository,
          EventsRepository,
          EventsRepository
        >
    with $Provider<EventsRepository> {
  const EventsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'eventsRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$eventsRepositoryHash();

  @$internal
  @override
  $ProviderElement<EventsRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  EventsRepository create(Ref ref) {
    return eventsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EventsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EventsRepository>(value),
    );
  }
}

String _$eventsRepositoryHash() => r'5af82fcb133f65e8cdddaea841e8793178c58a1c';

@ProviderFor(getEventsUsecase)
const getEventsUsecaseProvider = GetEventsUsecaseProvider._();

final class GetEventsUsecaseProvider
    extends
        $FunctionalProvider<
          GetEventsUsecase,
          GetEventsUsecase,
          GetEventsUsecase
        >
    with $Provider<GetEventsUsecase> {
  const GetEventsUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getEventsUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getEventsUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetEventsUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetEventsUsecase create(Ref ref) {
    return getEventsUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetEventsUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetEventsUsecase>(value),
    );
  }
}

String _$getEventsUsecaseHash() => r'71105ca98b5d807f40cfc561ce609a52b5b2fc99';
