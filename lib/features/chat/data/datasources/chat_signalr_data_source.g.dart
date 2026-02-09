// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_signalr_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// SignalR DataSource Provider (싱글톤)
/// - 앱 전체에서 하나의 인스턴스 공유
/// - 연결 상태가 여러 ViewModel에서 동일하게 유지됨

@ProviderFor(chatSignalRDataSource)
const chatSignalRDataSourceProvider = ChatSignalRDataSourceProvider._();

/// SignalR DataSource Provider (싱글톤)
/// - 앱 전체에서 하나의 인스턴스 공유
/// - 연결 상태가 여러 ViewModel에서 동일하게 유지됨

final class ChatSignalRDataSourceProvider
    extends
        $FunctionalProvider<
          ChatSignalRDataSource,
          ChatSignalRDataSource,
          ChatSignalRDataSource
        >
    with $Provider<ChatSignalRDataSource> {
  /// SignalR DataSource Provider (싱글톤)
  /// - 앱 전체에서 하나의 인스턴스 공유
  /// - 연결 상태가 여러 ViewModel에서 동일하게 유지됨
  const ChatSignalRDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'chatSignalRDataSourceProvider',
        isAutoDispose: false,
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
    r'0d656385d43f525fd9a8f01f88015d770e5219a5';
