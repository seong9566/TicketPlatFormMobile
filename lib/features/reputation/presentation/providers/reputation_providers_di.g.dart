// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reputation_providers_di.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(reputationRemoteDataSource)
const reputationRemoteDataSourceProvider =
    ReputationRemoteDataSourceProvider._();

final class ReputationRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          ReputationRemoteDataSource,
          ReputationRemoteDataSource,
          ReputationRemoteDataSource
        >
    with $Provider<ReputationRemoteDataSource> {
  const ReputationRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reputationRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reputationRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<ReputationRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ReputationRemoteDataSource create(Ref ref) {
    return reputationRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ReputationRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ReputationRemoteDataSource>(value),
    );
  }
}

String _$reputationRemoteDataSourceHash() =>
    r'8d605905a2af85b8d2a237f26a6aed6b4682abc9';

@ProviderFor(reputationRepository)
const reputationRepositoryProvider = ReputationRepositoryProvider._();

final class ReputationRepositoryProvider
    extends
        $FunctionalProvider<
          ReputationRepository,
          ReputationRepository,
          ReputationRepository
        >
    with $Provider<ReputationRepository> {
  const ReputationRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reputationRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reputationRepositoryHash();

  @$internal
  @override
  $ProviderElement<ReputationRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ReputationRepository create(Ref ref) {
    return reputationRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ReputationRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ReputationRepository>(value),
    );
  }
}

String _$reputationRepositoryHash() =>
    r'47cd36a61d2a80b6fddfad2c8cbcc40d914dfb5c';

@ProviderFor(createReputationUsecase)
const createReputationUsecaseProvider = CreateReputationUsecaseProvider._();

final class CreateReputationUsecaseProvider
    extends
        $FunctionalProvider<
          CreateReputationUsecase,
          CreateReputationUsecase,
          CreateReputationUsecase
        >
    with $Provider<CreateReputationUsecase> {
  const CreateReputationUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createReputationUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createReputationUsecaseHash();

  @$internal
  @override
  $ProviderElement<CreateReputationUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CreateReputationUsecase create(Ref ref) {
    return createReputationUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateReputationUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateReputationUsecase>(value),
    );
  }
}

String _$createReputationUsecaseHash() =>
    r'21c5de8fec5be85dff24f624efc13d853505d746';

@ProviderFor(checkReputationUsecase)
const checkReputationUsecaseProvider = CheckReputationUsecaseProvider._();

final class CheckReputationUsecaseProvider
    extends
        $FunctionalProvider<
          CheckReputationUsecase,
          CheckReputationUsecase,
          CheckReputationUsecase
        >
    with $Provider<CheckReputationUsecase> {
  const CheckReputationUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'checkReputationUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$checkReputationUsecaseHash();

  @$internal
  @override
  $ProviderElement<CheckReputationUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CheckReputationUsecase create(Ref ref) {
    return checkReputationUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CheckReputationUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CheckReputationUsecase>(value),
    );
  }
}

String _$checkReputationUsecaseHash() =>
    r'ceb719aeeef1e3ac827e870b7fdb0543c5609c16';
