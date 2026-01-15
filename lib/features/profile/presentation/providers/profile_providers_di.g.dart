// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_providers_di.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getMyProfileUsecase)
const getMyProfileUsecaseProvider = GetMyProfileUsecaseProvider._();

final class GetMyProfileUsecaseProvider
    extends
        $FunctionalProvider<
          GetMyProfileUsecase,
          GetMyProfileUsecase,
          GetMyProfileUsecase
        >
    with $Provider<GetMyProfileUsecase> {
  const GetMyProfileUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getMyProfileUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getMyProfileUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetMyProfileUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetMyProfileUsecase create(Ref ref) {
    return getMyProfileUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetMyProfileUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetMyProfileUsecase>(value),
    );
  }
}

String _$getMyProfileUsecaseHash() =>
    r'b130b1c619b1989181b0bfe1610ddecd7f0fa349';
