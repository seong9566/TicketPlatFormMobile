// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_chat_room_usecase.dart';

// ***************************************************************************
// RiverpodGenerator
// ***************************************************************************

// ignore_for_file: type=lint, type=warning

@ProviderFor(leaveChatRoomUsecase)
const leaveChatRoomUsecaseProvider = LeaveChatRoomUsecaseProvider._();

final class LeaveChatRoomUsecaseProvider
    extends
        $FunctionalProvider<
          LeaveChatRoomUsecase,
          LeaveChatRoomUsecase,
          LeaveChatRoomUsecase
        >
    with $Provider<LeaveChatRoomUsecase> {
  const LeaveChatRoomUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'leaveChatRoomUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$leaveChatRoomUsecaseHash();

  @$internal
  @override
  $ProviderElement<LeaveChatRoomUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LeaveChatRoomUsecase create(Ref ref) {
    return leaveChatRoomUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LeaveChatRoomUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LeaveChatRoomUsecase>(value),
    );
  }
}

String _$leaveChatRoomUsecaseHash() =>
    r'9f3d7f5f4c7b8a9b5c8a221c4c0d2a0b31d7f2af';
