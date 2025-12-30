// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ticketing_info_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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
