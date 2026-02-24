import 'package:ticket_platform_mobile/features/reputation/domain/entities/reputation_entity.dart';

abstract class ReputationRepository {
  Future<void> createReputation({
    required int transactionId,
    required int score,
  });

  Future<ReputationCheckEntity> checkReputation(int transactionId);
}
