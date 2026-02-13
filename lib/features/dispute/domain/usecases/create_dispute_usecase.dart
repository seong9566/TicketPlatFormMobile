import 'package:ticket_platform_mobile/features/dispute/domain/entities/dispute_entity.dart';
import 'package:ticket_platform_mobile/features/dispute/domain/repositories/dispute_repository.dart';

class CreateDisputeUsecase {
  final DisputeRepository _repository;

  CreateDisputeUsecase(this._repository);

  Future<DisputeDetailEntity> call({
    required int transactionId,
    required DisputeTypeCode typeCode,
    required String description,
  }) {
    return _repository.createDispute(
      transactionId: transactionId,
      typeCode: typeCode,
      description: description,
    );
  }
}
