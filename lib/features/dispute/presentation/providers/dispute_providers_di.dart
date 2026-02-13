import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/dio_provider.dart';
import 'package:ticket_platform_mobile/features/dispute/data/datasources/dispute_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/dispute/data/repositories/dispute_repository_impl.dart';
import 'package:ticket_platform_mobile/features/dispute/domain/repositories/dispute_repository.dart';
import 'package:ticket_platform_mobile/features/dispute/domain/usecases/add_dispute_evidence_usecase.dart';
import 'package:ticket_platform_mobile/features/dispute/domain/usecases/cancel_dispute_usecase.dart';
import 'package:ticket_platform_mobile/features/dispute/domain/usecases/create_dispute_usecase.dart';
import 'package:ticket_platform_mobile/features/dispute/domain/usecases/get_dispute_detail_usecase.dart';
import 'package:ticket_platform_mobile/features/dispute/domain/usecases/get_disputes_usecase.dart';

part 'dispute_providers_di.g.dart';

@riverpod
DisputeRemoteDataSource disputeRemoteDataSource(Ref ref) {
  return DisputeRemoteDataSourceImpl(ref.watch(dioProvider));
}

@riverpod
DisputeRepository disputeRepository(Ref ref) {
  return DisputeRepositoryImpl(ref.watch(disputeRemoteDataSourceProvider));
}

@riverpod
CreateDisputeUsecase createDisputeUsecase(Ref ref) {
  return CreateDisputeUsecase(ref.watch(disputeRepositoryProvider));
}

@riverpod
GetDisputesUsecase getDisputesUsecase(Ref ref) {
  return GetDisputesUsecase(ref.watch(disputeRepositoryProvider));
}

@riverpod
GetDisputeDetailUsecase getDisputeDetailUsecase(Ref ref) {
  return GetDisputeDetailUsecase(ref.watch(disputeRepositoryProvider));
}

@riverpod
AddDisputeEvidenceUsecase addDisputeEvidenceUsecase(Ref ref) {
  return AddDisputeEvidenceUsecase(ref.watch(disputeRepositoryProvider));
}

@riverpod
CancelDisputeUsecase cancelDisputeUsecase(Ref ref) {
  return CancelDisputeUsecase(ref.watch(disputeRepositoryProvider));
}
