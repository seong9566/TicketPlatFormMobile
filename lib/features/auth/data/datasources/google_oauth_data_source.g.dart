// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_oauth_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(googleOAuthDataSource)
const googleOAuthDataSourceProvider = GoogleOAuthDataSourceProvider._();

final class GoogleOAuthDataSourceProvider
    extends
        $FunctionalProvider<
          GoogleOAuthDataSource,
          GoogleOAuthDataSource,
          GoogleOAuthDataSource
        >
    with $Provider<GoogleOAuthDataSource> {
  const GoogleOAuthDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'googleOAuthDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$googleOAuthDataSourceHash();

  @$internal
  @override
  $ProviderElement<GoogleOAuthDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GoogleOAuthDataSource create(Ref ref) {
    return googleOAuthDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GoogleOAuthDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GoogleOAuthDataSource>(value),
    );
  }
}

String _$googleOAuthDataSourceHash() =>
    r'e0944b9c3d143c1f428f80abcaac5a2626ed2306';
