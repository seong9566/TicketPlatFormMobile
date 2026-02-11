// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kakao_oauth_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(kakaoOAuthDataSource)
const kakaoOAuthDataSourceProvider = KakaoOAuthDataSourceProvider._();

final class KakaoOAuthDataSourceProvider
    extends
        $FunctionalProvider<
          KakaoOAuthDataSource,
          KakaoOAuthDataSource,
          KakaoOAuthDataSource
        >
    with $Provider<KakaoOAuthDataSource> {
  const KakaoOAuthDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'kakaoOAuthDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$kakaoOAuthDataSourceHash();

  @$internal
  @override
  $ProviderElement<KakaoOAuthDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  KakaoOAuthDataSource create(Ref ref) {
    return kakaoOAuthDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(KakaoOAuthDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<KakaoOAuthDataSource>(value),
    );
  }
}

String _$kakaoOAuthDataSourceHash() =>
    r'002ed7e4c1a0742abaca0b9c5571bc816eb0c640';
