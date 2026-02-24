import 'package:ticket_platform_mobile/features/reputation/domain/entities/reputation_entity.dart';
import 'package:ticket_platform_mobile/features/reputation/domain/repositories/reputation_repository.dart';

class CheckReputationUsecase {
  CheckReputationUsecase(this._repository);

  final ReputationRepository _repository;

  Future<ReputationCheckEntity> call(int transactionId) {
    return _repository.checkReputation(transactionId);
  }
}
