import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/settlement/domain/entities/settlement_entity.dart';
import 'package:ticket_platform_mobile/features/settlement/presentation/providers/settlement_providers_di.dart';

part 'settlement_detail_viewmodel.g.dart';

@riverpod
class SettlementDetailViewModel extends _$SettlementDetailViewModel {
  @override
  Future<SettlementDetailEntity> build(int settlementId) async {
    return ref
        .read(settlementRepositoryProvider)
        .getSettlementDetail(settlementId);
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => build(settlementId));
  }
}
