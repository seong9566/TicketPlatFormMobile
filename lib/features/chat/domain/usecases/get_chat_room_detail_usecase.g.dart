// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_chat_room_detail_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getChatRoomDetailUsecase)
const getChatRoomDetailUsecaseProvider = GetChatRoomDetailUsecaseProvider._();

final class GetChatRoomDetailUsecaseProvider
    extends
        $FunctionalProvider<
          GetChatRoomDetailUsecase,
          GetChatRoomDetailUsecase,
          GetChatRoomDetailUsecase
        >
    with $Provider<GetChatRoomDetailUsecase> {
  const GetChatRoomDetailUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getChatRoomDetailUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getChatRoomDetailUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetChatRoomDetailUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetChatRoomDetailUsecase create(Ref ref) {
    return getChatRoomDetailUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetChatRoomDetailUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetChatRoomDetailUsecase>(value),
    );
  }
}

String _$getChatRoomDetailUsecaseHash() =>
    r'815df9fe4959aee4e8a48b85cbafe7d67440ce7b';
