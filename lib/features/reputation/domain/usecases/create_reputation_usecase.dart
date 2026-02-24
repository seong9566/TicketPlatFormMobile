import 'package:ticket_platform_mobile/features/reputation/domain/repositories/reputation_repository.dart';

class CreateReputationUsecase {
  CreateReputationUsecase(this._repository);

  final ReputationRepository _repository;

  Future<void> call({required int transactionId, required int score}) {
    return _repository.createReputation(
      transactionId: transactionId,
      score: score,
    );
  }
}
