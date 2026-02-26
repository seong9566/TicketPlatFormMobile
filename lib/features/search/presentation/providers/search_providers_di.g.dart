// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_providers_di.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(searchRepository)
const searchRepositoryProvider = SearchRepositoryProvider._();

final class SearchRepositoryProvider
    extends
        $FunctionalProvider<
          SearchRepository,
          SearchRepository,
          SearchRepository
        >
    with $Provider<SearchRepository> {
  const SearchRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'searchRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$searchRepositoryHash();

  @$internal
  @override
  $ProviderElement<SearchRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SearchRepository create(Ref ref) {
    return searchRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SearchRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SearchRepository>(value),
    );
  }
}

String _$searchRepositoryHash() => r'78e1536c7934786259f5527892cdb4112c8b73a3';

@ProviderFor(searchUseCase)
const searchUseCaseProvider = SearchUseCaseProvider._();

final class SearchUseCaseProvider
    extends $FunctionalProvider<SearchUseCase, SearchUseCase, SearchUseCase>
    with $Provider<SearchUseCase> {
  const SearchUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'searchUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$searchUseCaseHash();

  @$internal
  @override
  $ProviderElement<SearchUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SearchUseCase create(Ref ref) {
    return searchUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SearchUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SearchUseCase>(value),
    );
  }
}

String _$searchUseCaseHash() => r'6f6f31f63fbf3f34020750d1f4a380a9e021ac12';
