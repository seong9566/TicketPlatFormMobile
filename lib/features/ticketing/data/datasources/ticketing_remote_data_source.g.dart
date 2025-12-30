// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticketing_remote_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ticketingRemoteDataSource)
const ticketingRemoteDataSourceProvider = TicketingRemoteDataSourceProvider._();

final class TicketingRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          TicketingRemoteDataSource,
          TicketingRemoteDataSource,
          TicketingRemoteDataSource
        >
    with $Provider<TicketingRemoteDataSource> {
  const TicketingRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ticketingRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ticketingRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<TicketingRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TicketingRemoteDataSource create(Ref ref) {
    return ticketingRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TicketingRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TicketingRemoteDataSource>(value),
    );
  }
}

String _$ticketingRemoteDataSourceHash() =>
    r'b3f7696db4a6379696b906db253dacf5f2f24f2d';
