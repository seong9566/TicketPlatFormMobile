import 'dart:io';

import 'package:ticket_platform_mobile/features/dispute/domain/entities/dispute_entity.dart';

abstract class DisputeRepository {
  Future<DisputeDetailEntity> createDispute({
    required int transactionId,
    required DisputeTypeCode typeCode,
    required String description,
  });

  Future<DisputeListEntity> getDisputes({String? cursor, int? limit});

  Future<DisputeDetailEntity> getDisputeDetail(int disputeId);

  Future<DisputeEvidenceEntity> addEvidence({
    required int disputeId,
    required File file,
    String? note,
  });

  Future<DisputeDetailEntity> cancelDispute(int disputeId);
}
