// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_event_bus.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(chatEventBus)
const chatEventBusProvider = ChatEventBusProvider._();

final class ChatEventBusProvider
    extends $FunctionalProvider<ChatEventBus, ChatEventBus, ChatEventBus>
    with $Provider<ChatEventBus> {
  const ChatEventBusProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'chatEventBusProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$chatEventBusHash();

  @$internal
  @override
  $ProviderElement<ChatEventBus> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ChatEventBus create(Ref ref) {
    return chatEventBus(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ChatEventBus value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ChatEventBus>(value),
    );
  }
}

String _$chatEventBusHash() => r'20ca3849a5b297a4907f5dfeff4748df09379fe8';
