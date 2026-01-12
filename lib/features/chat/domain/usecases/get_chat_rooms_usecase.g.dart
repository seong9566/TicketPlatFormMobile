// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_chat_rooms_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getChatRoomsUsecase)
const getChatRoomsUsecaseProvider = GetChatRoomsUsecaseProvider._();

final class GetChatRoomsUsecaseProvider
    extends
        $FunctionalProvider<
          GetChatRoomsUsecase,
          GetChatRoomsUsecase,
          GetChatRoomsUsecase
        >
    with $Provider<GetChatRoomsUsecase> {
  const GetChatRoomsUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getChatRoomsUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getChatRoomsUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetChatRoomsUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetChatRoomsUsecase create(Ref ref) {
    return getChatRoomsUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetChatRoomsUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetChatRoomsUsecase>(value),
    );
  }
}

String _$getChatRoomsUsecaseHash() =>
    r'63a6a6f14acf741bbe63ddf05098874bab8e7a04';
