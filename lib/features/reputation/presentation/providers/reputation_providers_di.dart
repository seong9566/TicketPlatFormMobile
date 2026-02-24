import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/dio_provider.dart';
import 'package:ticket_platform_mobile/features/reputation/data/datasources/reputation_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/reputation/data/repositories/reputation_repository_impl.dart';
import 'package:ticket_platform_mobile/features/reputation/domain/repositories/reputation_repository.dart';
import 'package:ticket_platform_mobile/features/reputation/domain/usecases/check_reputation_usecase.dart';
import 'package:ticket_platform_mobile/features/reputation/domain/usecases/create_reputation_usecase.dart';

part 'reputation_providers_di.g.dart';

@riverpod
ReputationRemoteDataSource reputationRemoteDataSource(Ref ref) {
  return ReputationRemoteDataSourceImpl(ref.watch(dioProvider));
}

@riverpod
ReputationRepository reputationRepository(Ref ref) {
  return ReputationRepositoryImpl(
    ref.watch(reputationRemoteDataSourceProvider),
  );
}

@riverpod
CreateReputationUsecase createReputationUsecase(Ref ref) {
  return CreateReputationUsecase(ref.watch(reputationRepositoryProvider));
}

@riverpod
CheckReputationUsecase checkReputationUsecase(Ref ref) {
  return CheckReputationUsecase(ref.watch(reputationRepositoryProvider));
}
