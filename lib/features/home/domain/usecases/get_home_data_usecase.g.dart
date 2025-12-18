// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_home_data_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getHomeDataUsecase)
const getHomeDataUsecaseProvider = GetHomeDataUsecaseProvider._();

final class GetHomeDataUsecaseProvider
    extends
        $FunctionalProvider<
          GetHomeDataUsecase,
          GetHomeDataUsecase,
          GetHomeDataUsecase
        >
    with $Provider<GetHomeDataUsecase> {
  const GetHomeDataUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getHomeDataUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getHomeDataUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetHomeDataUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetHomeDataUsecase create(Ref ref) {
    return getHomeDataUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetHomeDataUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetHomeDataUsecase>(value),
    );
  }
}

String _$getHomeDataUsecaseHash() =>
    r'781802eaa000c461d23a19deba3d9b964718489c';
