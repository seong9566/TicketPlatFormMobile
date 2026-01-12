// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_or_get_chat_room_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(createOrGetChatRoomUsecase)
const createOrGetChatRoomUsecaseProvider =
    CreateOrGetChatRoomUsecaseProvider._();

final class CreateOrGetChatRoomUsecaseProvider
    extends
        $FunctionalProvider<
          CreateOrGetChatRoomUsecase,
          CreateOrGetChatRoomUsecase,
          CreateOrGetChatRoomUsecase
        >
    with $Provider<CreateOrGetChatRoomUsecase> {
  const CreateOrGetChatRoomUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createOrGetChatRoomUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createOrGetChatRoomUsecaseHash();

  @$internal
  @override
  $ProviderElement<CreateOrGetChatRoomUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CreateOrGetChatRoomUsecase create(Ref ref) {
    return createOrGetChatRoomUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateOrGetChatRoomUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateOrGetChatRoomUsecase>(value),
    );
  }
}

String _$createOrGetChatRoomUsecaseHash() =>
    r'f865bc1532851206f0dba650aaac172eaf995539';
