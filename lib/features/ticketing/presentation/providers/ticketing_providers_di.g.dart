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

@ProviderFor(getTicketingInfoUseCase)
const getTicketingInfoUseCaseProvider = GetTicketingInfoUseCaseProvider._();

final class GetTicketingInfoUseCaseProvider
    extends
        $FunctionalProvider<
          GetTicketingInfoUseCase,
          GetTicketingInfoUseCase,
          GetTicketingInfoUseCase
        >
    with $Provider<GetTicketingInfoUseCase> {
  const GetTicketingInfoUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getTicketingInfoUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getTicketingInfoUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetTicketingInfoUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetTicketingInfoUseCase create(Ref ref) {
    return getTicketingInfoUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetTicketingInfoUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetTicketingInfoUseCase>(value),
    );
  }
}

String _$getTicketingInfoUseCaseHash() =>
    r'2c60641adb304a2637bea167d70c55a1399efa94';

@ProviderFor(getTicketDetailUseCase)
const getTicketDetailUseCaseProvider = GetTicketDetailUseCaseProvider._();

final class GetTicketDetailUseCaseProvider
    extends
        $FunctionalProvider<
          GetTicketDetailUseCase,
          GetTicketDetailUseCase,
          GetTicketDetailUseCase
        >
    with $Provider<GetTicketDetailUseCase> {
  const GetTicketDetailUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getTicketDetailUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getTicketDetailUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetTicketDetailUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetTicketDetailUseCase create(Ref ref) {
    return getTicketDetailUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetTicketDetailUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetTicketDetailUseCase>(value),
    );
  }
}

String _$getTicketDetailUseCaseHash() =>
    r'0b9bc3d7349ce1b6cf62796c8044662e9824bceb';
