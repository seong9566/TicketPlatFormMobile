import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/dio_provider.dart';
import 'package:ticket_platform_mobile/features/withdrawal/data/datasources/withdrawal_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/withdrawal/data/repositories/withdrawal_repository_impl.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/repositories/withdrawal_repository.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/usecases/cancel_withdrawal_usecase.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/usecases/get_balance_history_usecase.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/usecases/get_balance_usecase.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/usecases/get_withdrawal_history_usecase.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/usecases/request_withdrawal_usecase.dart';

part 'withdrawal_providers_di.g.dart';

@riverpod
WithdrawalRemoteDataSource withdrawalRemoteDataSource(Ref ref) {
  return WithdrawalRemoteDataSourceImpl(ref.watch(dioProvider));
}

@riverpod
WithdrawalRepository withdrawalRepository(Ref ref) {
  return WithdrawalRepositoryImpl(
    ref.watch(withdrawalRemoteDataSourceProvider),
  );
}

@riverpod
GetBalanceUsecase getBalanceUsecase(Ref ref) {
  return GetBalanceUsecase(ref.watch(withdrawalRepositoryProvider));
}

@riverpod
GetBalanceHistoryUsecase getBalanceHistoryUsecase(Ref ref) {
  return GetBalanceHistoryUsecase(ref.watch(withdrawalRepositoryProvider));
}

@riverpod
RequestWithdrawalUsecase requestWithdrawalUsecase(Ref ref) {
  return RequestWithdrawalUsecase(ref.watch(withdrawalRepositoryProvider));
}

@riverpod
GetWithdrawalHistoryUsecase getWithdrawalHistoryUsecase(Ref ref) {
  return GetWithdrawalHistoryUsecase(ref.watch(withdrawalRepositoryProvider));
}

@riverpod
CancelWithdrawalUsecase cancelWithdrawalUsecase(Ref ref) {
  return CancelWithdrawalUsecase(ref.watch(withdrawalRepositoryProvider));
}
