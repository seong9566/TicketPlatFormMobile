// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 중앙화된 토큰 갱신 서비스 Provider
///
/// SignalR, ApiInterceptor 등 모든 곳에서 공유합니다.

@ProviderFor(tokenRefreshService)
const tokenRefreshServiceProvider = TokenRefreshServiceProvider._();

/// 중앙화된 토큰 갱신 서비스 Provider
///
/// SignalR, ApiInterceptor 등 모든 곳에서 공유합니다.

final class TokenRefreshServiceProvider
    extends
        $FunctionalProvider<
          TokenRefreshService,
          TokenRefreshService,
          TokenRefreshService
        >
    with $Provider<TokenRefreshService> {
  /// 중앙화된 토큰 갱신 서비스 Provider
  ///
  /// SignalR, ApiInterceptor 등 모든 곳에서 공유합니다.
  const TokenRefreshServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tokenRefreshServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tokenRefreshServiceHash();

  @$internal
  @override
  $ProviderElement<TokenRefreshService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TokenRefreshService create(Ref ref) {
    return tokenRefreshService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TokenRefreshService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TokenRefreshService>(value),
    );
  }
}

String _$tokenRefreshServiceHash() =>
    r'781b29e7621719b6966b4430f48b27aebef7970f';

@ProviderFor(dio)
const dioProvider = DioProvider._();

final class DioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  const DioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return dio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$dioHash() => r'cb808dcc4df007ce31be92cff3b35a95919c5adb';
