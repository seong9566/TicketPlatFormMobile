import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/dio_provider.dart';
import 'package:ticket_platform_mobile/features/settlement/data/datasources/settlement_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/settlement/data/repositories/settlement_repository_impl.dart';
import 'package:ticket_platform_mobile/features/settlement/domain/repositories/settlement_repository.dart';

part 'settlement_providers_di.g.dart';

@riverpod
SettlementRemoteDataSource settlementRemoteDataSource(Ref ref) {
  return SettlementRemoteDataSourceImpl(ref.watch(dioProvider));
}

@riverpod
SettlementRepository settlementRepository(Ref ref) {
  return SettlementRepositoryImpl(
    ref.watch(settlementRemoteDataSourceProvider),
  );
}
