import 'dart:io';

import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/features/dispute/data/datasources/dispute_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/dispute/data/dto/request/add_dispute_evidence_req_dto.dart';
import 'package:ticket_platform_mobile/features/dispute/data/dto/request/create_dispute_req_dto.dart';
import 'package:ticket_platform_mobile/features/dispute/data/dto/request/get_disputes_req_dto.dart';
import 'package:ticket_platform_mobile/features/dispute/data/dto/response/dispute_create_resp_dto.dart';
import 'package:ticket_platform_mobile/features/dispute/data/dto/response/dispute_detail_resp_dto.dart';
import 'package:ticket_platform_mobile/features/dispute/data/dto/response/dispute_evidence_resp_dto.dart';
import 'package:ticket_platform_mobile/features/dispute/data/dto/response/dispute_list_resp_dto.dart';
import 'package:ticket_platform_mobile/features/dispute/domain/entities/dispute_entity.dart';
import 'package:ticket_platform_mobile/features/dispute/domain/repositories/dispute_repository.dart';

class DisputeRepositoryImpl implements DisputeRepository {
  final DisputeRemoteDataSource _remoteDataSource;

  DisputeRepositoryImpl(this._remoteDataSource);

  @override
  Future<DisputeDetailEntity> createDispute({
    required int transactionId,
    required DisputeTypeCode typeCode,
    required String description,
  }) async {
    final response = await _remoteDataSource.createDispute(
      CreateDisputeReqDto(
        transactionId: transactionId,
        typeCode: typeCode,
        description: description,
      ),
    );

    return response.mapOrThrow(
      (dto) => dto.toEntity(),
      errorMessage: '신고 생성에 실패했습니다.',
    );
  }

  @override
  Future<DisputeListEntity> getDisputes({String? cursor, int? limit}) async {
    final response = await _remoteDataSource.getDisputes(
      GetDisputesReqDto(cursor: cursor, limit: limit),
    );

    return response.mapOrThrow(
      (dto) => dto.toEntity(),
      errorMessage: '신고 목록을 불러오지 못했습니다.',
    );
  }

  @override
  Future<DisputeDetailEntity> getDisputeDetail(int disputeId) async {
    final response = await _remoteDataSource.getDisputeDetail(disputeId);

    return response.mapOrThrow(
      (dto) => dto.toEntity(),
      errorMessage: '신고 상세를 불러오지 못했습니다.',
    );
  }

  @override
  Future<DisputeEvidenceEntity> addEvidence({
    required int disputeId,
    required File file,
    String? note,
  }) async {
    final response = await _remoteDataSource.addEvidence(
      disputeId: disputeId,
      req: AddDisputeEvidenceReqDto(file: file, note: note),
    );

    return response.mapOrThrow(
      (dto) => dto.toEntity(),
      errorMessage: '증거 첨부에 실패했습니다.',
    );
  }

  @override
  Future<DisputeDetailEntity> cancelDispute(int disputeId) async {
    final response = await _remoteDataSource.cancelDispute(disputeId);

    return response.mapOrThrow(
      (dto) => dto.toEntity(),
      errorMessage: '신고 취소에 실패했습니다.',
    );
  }
}
