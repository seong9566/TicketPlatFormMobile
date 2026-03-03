import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/features/settlement/data/datasources/settlement_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/settlement/data/dto/response/settlement_detail_resp_dto.dart';
import 'package:ticket_platform_mobile/features/settlement/data/dto/response/settlement_list_resp_dto.dart';
import 'package:ticket_platform_mobile/features/settlement/domain/entities/settlement_entity.dart';
import 'package:ticket_platform_mobile/features/settlement/domain/repositories/settlement_repository.dart';

class SettlementRepositoryImpl implements SettlementRepository {
  final SettlementRemoteDataSource _remoteDataSource;

  SettlementRepositoryImpl(this._remoteDataSource);

  @override
  Future<SettlementListEntity> getSettlements({
    int page = 1,
    int size = 20,
    String? status,
  }) async {
    final response = await _remoteDataSource.getSettlements(
      page: page,
      size: size,
      status: status,
    );

    return response.mapOrThrow(
      (dto) => dto.toEntity(),
      errorMessage: '정산 목록을 불러오지 못했습니다.',
    );
  }

  @override
  Future<SettlementDetailEntity> getSettlementDetail(int settlementId) async {
    final response = await _remoteDataSource.getSettlementDetail(settlementId);

    return response.mapOrThrow(
      (dto) => dto.toEntity(),
      errorMessage: '정산 상세를 불러오지 못했습니다.',
    );
  }
}
