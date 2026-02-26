import 'package:ticket_platform_mobile/features/bank_account/data/datasources/bank_account_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/bank_account/data/dto/request/register_bank_account_req_dto.dart';
import 'package:ticket_platform_mobile/features/bank_account/data/dto/response/bank_account_resp_dto.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/features/bank_account/domain/entities/bank_account_entity.dart';
import 'package:ticket_platform_mobile/features/bank_account/domain/repositories/bank_account_repository.dart';

class BankAccountRepositoryImpl implements BankAccountRepository {
  BankAccountRepositoryImpl(this._remoteDataSource);

  final BankAccountRemoteDataSource _remoteDataSource;

  @override
  Future<BankAccountEntity> registerBankAccount({
    required String bankName,
    required String bankCode,
    required String accountNumber,
    required String accountHolder,
  }) async {
    final response = await _remoteDataSource.registerBankAccount(
      RegisterBankAccountReqDto(
        bankName: bankName,
        bankCode: bankCode,
        accountNumber: accountNumber,
        accountHolder: accountHolder,
      ),
    );

    return response.mapOrThrow(
      (dto) => dto.toEntity(),
      errorMessage: '계좌 등록에 실패했습니다.',
    );
  }

  @override
  Future<BankAccountEntity?> getMyBankAccount() async {
    final response = await _remoteDataSource.getMyBankAccount();
    return response.mapOrThrow(
      (dto) => dto?.toEntity(),
      errorMessage: '계좌 조회에 실패했습니다.',
    );
  }

  @override
  Future<void> deleteBankAccount() async {
    final response = await _remoteDataSource.deleteBankAccount();
    response.voidOrThrow(errorMessage: '계좌 삭제에 실패했습니다.');
  }
}
