import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/features/profile/data/datasources/transaction_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/profile/data/dto/request/transaction_history_req_dto.dart';
import 'package:ticket_platform_mobile/features/profile/data/dto/response/transaction_list_resp_dto.dart';
import 'package:ticket_platform_mobile/features/profile/domain/entities/transaction_list_entity.dart';
import 'package:ticket_platform_mobile/features/profile/domain/repositories/transaction_history_repository.dart';

part 'transaction_history_repository_impl.g.dart';

class TransactionHistoryRepositoryImpl implements TransactionHistoryRepository {
  final TransactionRemoteDataSource _remoteDataSource;

  TransactionHistoryRepositoryImpl(this._remoteDataSource);

  @override
  Future<TransactionListEntity> getSalesHistory({
    String? status,
    String? period,
    String? sortBy,
    String? cursor,
    int? limit,
  }) async {
    final reqDto = TransactionHistoryReqDto(
      status: status,
      period: period,
      sortBy: sortBy,
      cursor: cursor,
      limit: limit,
    );
    final response = await _remoteDataSource.getSalesHistory(reqDto);
    return response.mapOrThrow(
      (dto) => dto.toEntity(),
      errorMessage: '판매 내역을 불러올 수 없습니다.',
    );
  }

  @override
  Future<TransactionListEntity> getPurchasesHistory({
    String? status,
    String? period,
    String? sortBy,
    String? cursor,
    int? limit,
  }) async {
    final reqDto = TransactionHistoryReqDto(
      status: status,
      period: period,
      sortBy: sortBy,
      cursor: cursor,
      limit: limit,
    );
    final response = await _remoteDataSource.getPurchasesHistory(reqDto);
    return response.mapOrThrow(
      (dto) => dto.toEntity(),
      errorMessage: '구매 내역을 불러올 수 없습니다.',
    );
  }
}

@riverpod
TransactionHistoryRepository transactionHistoryRepository(Ref ref) {
  return TransactionHistoryRepositoryImpl(
    ref.read(transactionRemoteDataSourceProvider),
  );
}
