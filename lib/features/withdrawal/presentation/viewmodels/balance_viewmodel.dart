import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/entities/balance_entity.dart';
import 'package:ticket_platform_mobile/features/withdrawal/presentation/providers/withdrawal_providers_di.dart';

part 'balance_viewmodel.g.dart';

@riverpod
class BalanceViewModel extends _$BalanceViewModel {
  @override
  Future<BalanceEntity> build() async {
    return ref.read(getBalanceUsecaseProvider).call();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () => ref.read(getBalanceUsecaseProvider).call(),
    );
  }
}
