// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_event_sessions_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getEventSessionsUseCase)
const getEventSessionsUseCaseProvider = GetEventSessionsUseCaseProvider._();

final class GetEventSessionsUseCaseProvider
    extends
        $FunctionalProvider<
          GetEventSessionsUseCase,
          GetEventSessionsUseCase,
          GetEventSessionsUseCase
        >
    with $Provider<GetEventSessionsUseCase> {
  const GetEventSessionsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getEventSessionsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getEventSessionsUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetEventSessionsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetEventSessionsUseCase create(Ref ref) {
    return getEventSessionsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetEventSessionsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetEventSessionsUseCase>(value),
    );
  }
}

String _$getEventSessionsUseCaseHash() =>
    r'40fda20193bdebaade48862a9494386a7f5c0659';
