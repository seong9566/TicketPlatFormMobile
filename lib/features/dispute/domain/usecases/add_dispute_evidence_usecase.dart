import 'dart:io';

import 'package:ticket_platform_mobile/features/dispute/domain/entities/dispute_entity.dart';
import 'package:ticket_platform_mobile/features/dispute/domain/repositories/dispute_repository.dart';

class AddDisputeEvidenceUsecase {
  final DisputeRepository _repository;

  AddDisputeEvidenceUsecase(this._repository);

  Future<DisputeEvidenceEntity> call({
    required int disputeId,
    required File file,
    String? note,
  }) {
    return _repository.addEvidence(
      disputeId: disputeId,
      file: file,
      note: note,
    );
  }
}
