// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticketing_providers_di.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ticketingRepository)
const ticketingRepositoryProvider = TicketingRepositoryProvider._();

final class TicketingRepositoryProvider
    extends
        $FunctionalProvider<
          TicketingRepository,
          TicketingRepository,
          TicketingRepository
        >
    with $Provider<TicketingRepository> {
  const TicketingRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ticketingRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ticketingRepositoryHash();

  @$internal
  @override
  $ProviderElement<TicketingRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TicketingRepository create(Ref ref) {
    return ticketingRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TicketingRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TicketingRepository>(value),
    );
  }
}

String _$ticketingRepositoryHash() =>
    r'642a5af2b47511b9d012efe4c0f4ae336550dc1a';
