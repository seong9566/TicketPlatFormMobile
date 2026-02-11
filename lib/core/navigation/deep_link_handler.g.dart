// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deep_link_handler.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(deepLinkHandler)
const deepLinkHandlerProvider = DeepLinkHandlerProvider._();

final class DeepLinkHandlerProvider
    extends
        $FunctionalProvider<DeepLinkHandler, DeepLinkHandler, DeepLinkHandler>
    with $Provider<DeepLinkHandler> {
  const DeepLinkHandlerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deepLinkHandlerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deepLinkHandlerHash();

  @$internal
  @override
  $ProviderElement<DeepLinkHandler> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DeepLinkHandler create(Ref ref) {
    return deepLinkHandler(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DeepLinkHandler value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DeepLinkHandler>(value),
    );
  }
}

String _$deepLinkHandlerHash() => r'1d790acc58635dbe17f8ef5c58244aea8e2e765d';
