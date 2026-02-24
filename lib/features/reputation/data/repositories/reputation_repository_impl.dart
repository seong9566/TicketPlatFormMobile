import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/features/reputation/data/datasources/reputation_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/reputation/data/dto/request/create_reputation_req_dto.dart';
import 'package:ticket_platform_mobile/features/reputation/data/dto/response/reputation_check_resp_dto.dart';
import 'package:ticket_platform_mobile/features/reputation/domain/entities/reputation_entity.dart';
import 'package:ticket_platform_mobile/features/reputation/domain/repositories/reputation_repository.dart';

class ReputationRepositoryImpl implements ReputationRepository {
  ReputationRepositoryImpl(this._remoteDataSource);

  final ReputationRemoteDataSource _remoteDataSource;

  @override
  Future<void> createReputation({
    required int transactionId,
    required int score,
  }) async {
    final response = await _remoteDataSource.createReputation(
      CreateReputationReqDto(transactionId: transactionId, score: score),
    );

    if (!response.isSuccess) {
      throw Exception(
        response.message.isNotEmpty ? response.message : '리뷰 작성에 실패했습니다.',
      );
    }
  }

  @override
  Future<ReputationCheckEntity> checkReputation(int transactionId) async {
    final response = await _remoteDataSource.checkReputation(transactionId);

    return response.mapOrThrow(
      (dto) => dto.toEntity(),
      errorMessage: '리뷰 작성 가능 여부를 확인하지 못했습니다.',
    );
  }
}
