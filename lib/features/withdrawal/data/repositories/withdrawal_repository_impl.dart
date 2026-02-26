import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/features/withdrawal/data/datasources/withdrawal_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/withdrawal/data/dto/request/withdrawal_req_dto.dart';
import 'package:ticket_platform_mobile/features/withdrawal/data/dto/response/balance_history_resp_dto.dart';
import 'package:ticket_platform_mobile/features/withdrawal/data/dto/response/balance_resp_dto.dart';
import 'package:ticket_platform_mobile/features/withdrawal/data/dto/response/withdrawal_history_resp_dto.dart';
import 'package:ticket_platform_mobile/features/withdrawal/data/dto/response/withdrawal_resp_dto.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/entities/balance_entity.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/entities/balance_history_entity.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/entities/withdrawal_entity.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/entities/withdrawal_history_entity.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/repositories/withdrawal_repository.dart';

class WithdrawalRepositoryImpl implements WithdrawalRepository {
  final WithdrawalRemoteDataSource _remoteDataSource;

  WithdrawalRepositoryImpl(this._remoteDataSource);

  @override
  Future<BalanceEntity> getBalance() async {
    final response = await _remoteDataSource.getBalance();
    return response.mapOrThrow(
      (dto) => dto.toEntity(),
      errorMessage: '잔고 조회에 실패했습니다.',
    );
  }

  @override
  Future<BalanceHistoryEntity> getBalanceHistory({
    int page = 1,
    int pageSize = 20,
  }) async {
    final response = await _remoteDataSource.getBalanceHistory(
      page: page,
      pageSize: pageSize,
    );
    return response.mapOrThrow(
      (dto) => dto.toEntity(),
      errorMessage: '잔고 변동 내역 조회에 실패했습니다.',
    );
  }

  @override
  Future<WithdrawalEntity> requestWithdrawal({
    required int amount,
    int? bankAccountId,
  }) async {
    final idempotencyKey = DateTime.now().millisecondsSinceEpoch.toString();
    final response = await _remoteDataSource.requestWithdrawal(
      WithdrawalReqDto(
        amount: amount,
        bankAccountId: bankAccountId,
        idempotencyKey: idempotencyKey,
      ),
    );

    return response.mapOrThrow(
      (dto) => dto.toEntity(),
      errorMessage: '출금 요청에 실패했습니다.',
    );
  }

  @override
  Future<WithdrawalHistoryEntity> getWithdrawalHistory({
    int page = 1,
    int pageSize = 20,
  }) async {
    final response = await _remoteDataSource.getWithdrawalHistory(
      page: page,
      pageSize: pageSize,
    );
    return response.mapOrThrow(
      (dto) => dto.toEntity(),
      errorMessage: '출금 내역 조회에 실패했습니다.',
    );
  }

  @override
  Future<WithdrawalEntity> cancelWithdrawal(int withdrawalId) async {
    final response = await _remoteDataSource.cancelWithdrawal(withdrawalId);
    return response.mapOrThrow(
      (dto) => dto.toEntity(),
      errorMessage: '출금 취소에 실패했습니다.',
    );
  }
}
