// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_messages_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getMessagesUsecase)
const getMessagesUsecaseProvider = GetMessagesUsecaseProvider._();

final class GetMessagesUsecaseProvider
    extends
        $FunctionalProvider<
          GetMessagesUsecase,
          GetMessagesUsecase,
          GetMessagesUsecase
        >
    with $Provider<GetMessagesUsecase> {
  const GetMessagesUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getMessagesUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getMessagesUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetMessagesUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetMessagesUsecase create(Ref ref) {
    return getMessagesUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetMessagesUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetMessagesUsecase>(value),
    );
  }
}

String _$getMessagesUsecaseHash() =>
    r'14d177eadf3814d0751769e08d9c5c84be26e208';
