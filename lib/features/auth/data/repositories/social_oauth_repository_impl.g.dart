// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_oauth_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(socialOAuthRepository)
const socialOAuthRepositoryProvider = SocialOAuthRepositoryProvider._();

final class SocialOAuthRepositoryProvider
    extends
        $FunctionalProvider<
          SocialOAuthRepository,
          SocialOAuthRepository,
          SocialOAuthRepository
        >
    with $Provider<SocialOAuthRepository> {
  const SocialOAuthRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'socialOAuthRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$socialOAuthRepositoryHash();

  @$internal
  @override
  $ProviderElement<SocialOAuthRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SocialOAuthRepository create(Ref ref) {
    return socialOAuthRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SocialOAuthRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SocialOAuthRepository>(value),
    );
  }
}

String _$socialOAuthRepositoryHash() =>
    r'858c2de9abd7885fd079f08aac71b40ba4f2e3e5';
