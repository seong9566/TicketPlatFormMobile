import 'package:ticket_platform_mobile/features/dispute/domain/entities/dispute_entity.dart';
import 'package:ticket_platform_mobile/features/dispute/domain/repositories/dispute_repository.dart';

class CancelDisputeUsecase {
  final DisputeRepository _repository;

  CancelDisputeUsecase(this._repository);

  Future<DisputeDetailEntity> call(int disputeId) {
    return _repository.cancelDispute(disputeId);
  }
}
