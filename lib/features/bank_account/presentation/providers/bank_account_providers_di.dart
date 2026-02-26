import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/dio_provider.dart';
import 'package:ticket_platform_mobile/features/bank_account/data/datasources/bank_account_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/bank_account/data/repositories/bank_account_repository_impl.dart';
import 'package:ticket_platform_mobile/features/bank_account/domain/repositories/bank_account_repository.dart';
import 'package:ticket_platform_mobile/features/bank_account/domain/usecases/delete_bank_account_usecase.dart';
import 'package:ticket_platform_mobile/features/bank_account/domain/usecases/get_bank_account_usecase.dart';
import 'package:ticket_platform_mobile/features/bank_account/domain/usecases/register_bank_account_usecase.dart';

part 'bank_account_providers_di.g.dart';

@riverpod
BankAccountRemoteDataSource bankAccountRemoteDataSource(Ref ref) {
  return BankAccountRemoteDataSourceImpl(ref.watch(dioProvider));
}

@riverpod
BankAccountRepository bankAccountRepository(Ref ref) {
  return BankAccountRepositoryImpl(
    ref.watch(bankAccountRemoteDataSourceProvider),
  );
}

@riverpod
RegisterBankAccountUsecase registerBankAccountUsecase(Ref ref) {
  return RegisterBankAccountUsecase(ref.watch(bankAccountRepositoryProvider));
}

@riverpod
GetBankAccountUsecase getBankAccountUsecase(Ref ref) {
  return GetBankAccountUsecase(ref.watch(bankAccountRepositoryProvider));
}

@riverpod
DeleteBankAccountUsecase deleteBankAccountUsecase(Ref ref) {
  return DeleteBankAccountUsecase(ref.watch(bankAccountRepositoryProvider));
}
