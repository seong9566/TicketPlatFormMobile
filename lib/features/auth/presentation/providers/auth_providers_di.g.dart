// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_providers_di.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(loginUsecase)
const loginUsecaseProvider = LoginUsecaseProvider._();

final class LoginUsecaseProvider
    extends $FunctionalProvider<LoginUsecase, LoginUsecase, LoginUsecase>
    with $Provider<LoginUsecase> {
  const LoginUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginUsecaseHash();

  @$internal
  @override
  $ProviderElement<LoginUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LoginUsecase create(Ref ref) {
    return loginUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoginUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoginUsecase>(value),
    );
  }
}

String _$loginUsecaseHash() => r'b6751a7f38c360fca93a350f3e61557414fb1290';

@ProviderFor(signUpUsecase)
const signUpUsecaseProvider = SignUpUsecaseProvider._();

final class SignUpUsecaseProvider
    extends $FunctionalProvider<SignUpUsecase, SignUpUsecase, SignUpUsecase>
    with $Provider<SignUpUsecase> {
  const SignUpUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signUpUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signUpUsecaseHash();

  @$internal
  @override
  $ProviderElement<SignUpUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SignUpUsecase create(Ref ref) {
    return signUpUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SignUpUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SignUpUsecase>(value),
    );
  }
}

String _$signUpUsecaseHash() => r'd14169e377694fd46343442f0e0cad565859757c';

@ProviderFor(googleSignInUsecase)
const googleSignInUsecaseProvider = GoogleSignInUsecaseProvider._();

final class GoogleSignInUsecaseProvider
    extends
        $FunctionalProvider<
          GoogleSignInUsecase,
          GoogleSignInUsecase,
          GoogleSignInUsecase
        >
    with $Provider<GoogleSignInUsecase> {
  const GoogleSignInUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'googleSignInUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$googleSignInUsecaseHash();

  @$internal
  @override
  $ProviderElement<GoogleSignInUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GoogleSignInUsecase create(Ref ref) {
    return googleSignInUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GoogleSignInUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GoogleSignInUsecase>(value),
    );
  }
}

String _$googleSignInUsecaseHash() =>
    r'cc6f9aa34c39fa3dc51fc61a1b1331be685521bb';

@ProviderFor(kakaoSignInUsecase)
const kakaoSignInUsecaseProvider = KakaoSignInUsecaseProvider._();

final class KakaoSignInUsecaseProvider
    extends
        $FunctionalProvider<
          KakaoSignInUsecase,
          KakaoSignInUsecase,
          KakaoSignInUsecase
        >
    with $Provider<KakaoSignInUsecase> {
  const KakaoSignInUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'kakaoSignInUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$kakaoSignInUsecaseHash();

  @$internal
  @override
  $ProviderElement<KakaoSignInUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  KakaoSignInUsecase create(Ref ref) {
    return kakaoSignInUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(KakaoSignInUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<KakaoSignInUsecase>(value),
    );
  }
}

String _$kakaoSignInUsecaseHash() =>
    r'0f6fc96774d1641bac6ee7cafeee9f6cec44a4e6';
