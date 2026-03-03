import 'package:ticket_platform_mobile/features/settlement/domain/entities/settlement_entity.dart';

abstract class SettlementRepository {
  Future<SettlementListEntity> getSettlements({
    int page = 1,
    int size = 20,
    String? status,
  });

  Future<SettlementDetailEntity> getSettlementDetail(int settlementId);
}
