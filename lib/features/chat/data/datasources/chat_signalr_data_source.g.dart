// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_signalr_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(chatSignalRDataSource)
const chatSignalRDataSourceProvider = ChatSignalRDataSourceProvider._();

final class ChatSignalRDataSourceProvider
    extends
        $FunctionalProvider<
          ChatSignalRDataSource,
          ChatSignalRDataSource,
          ChatSignalRDataSource
        >
    with $Provider<ChatSignalRDataSource> {
  const ChatSignalRDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'chatSignalRDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$chatSignalRDataSourceHash();

  @$internal
  @override
  $ProviderElement<ChatSignalRDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ChatSignalRDataSource create(Ref ref) {
    return chatSignalRDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ChatSignalRDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ChatSignalRDataSource>(value),
    );
  }
}

String _$chatSignalRDataSourceHash() =>
    r'625f68a4e6d004dee9649947b91e38fa24f16a58';
