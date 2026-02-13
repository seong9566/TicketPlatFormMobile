import 'package:dio/dio.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/network/safe_api_call.dart';
import 'package:ticket_platform_mobile/features/dispute/data/dto/request/add_dispute_evidence_req_dto.dart';
import 'package:ticket_platform_mobile/features/dispute/data/dto/request/create_dispute_req_dto.dart';
import 'package:ticket_platform_mobile/features/dispute/data/dto/request/get_disputes_req_dto.dart';
import 'package:ticket_platform_mobile/features/dispute/data/dto/response/dispute_create_resp_dto.dart';
import 'package:ticket_platform_mobile/features/dispute/data/dto/response/dispute_detail_resp_dto.dart';
import 'package:ticket_platform_mobile/features/dispute/data/dto/response/dispute_evidence_resp_dto.dart';
import 'package:ticket_platform_mobile/features/dispute/data/dto/response/dispute_list_resp_dto.dart';

abstract class DisputeRemoteDataSource {
  Future<BaseResponse<DisputeCreateRespDto>> createDispute(
    CreateDisputeReqDto req,
  );

  Future<BaseResponse<DisputeListRespDto>> getDisputes(GetDisputesReqDto req);

  Future<BaseResponse<DisputeDetailRespDto>> getDisputeDetail(int disputeId);

  Future<BaseResponse<DisputeEvidenceRespDto>> addEvidence({
    required int disputeId,
    required AddDisputeEvidenceReqDto req,
  });

  Future<BaseResponse<DisputeDetailRespDto>> cancelDispute(int disputeId);
}

class DisputeRemoteDataSourceImpl implements DisputeRemoteDataSource {
  final Dio _dio;

  DisputeRemoteDataSourceImpl(this._dio);

  @override
  Future<BaseResponse<DisputeCreateRespDto>> createDispute(
    CreateDisputeReqDto req,
  ) async {
    return safeApiCall<DisputeCreateRespDto>(
      apiCall: (options) =>
          _dio.post(ApiEndpoint.disputes, data: req.toMap(), options: options),
      apiName: 'createDispute',
      dataParser: (json) =>
          DisputeCreateRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<DisputeListRespDto>> getDisputes(
    GetDisputesReqDto req,
  ) async {
    return safeApiCall<DisputeListRespDto>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.disputes,
        queryParameters: req.toMap(),
        options: options,
      ),
      apiName: 'getDisputes',
      dataParser: (json) =>
          DisputeListRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<DisputeDetailRespDto>> getDisputeDetail(
    int disputeId,
  ) async {
    return safeApiCall<DisputeDetailRespDto>(
      apiCall: (options) =>
          _dio.get(ApiEndpoint.disputeDetail(disputeId), options: options),
      apiName: 'getDisputeDetail',
      dataParser: (json) =>
          DisputeDetailRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<DisputeEvidenceRespDto>> addEvidence({
    required int disputeId,
    required AddDisputeEvidenceReqDto req,
  }) async {
    final formData = await req.toFormData();

    return safeApiCall<DisputeEvidenceRespDto>(
      apiCall: (options) => _dio.post(
        ApiEndpoint.disputeEvidence(disputeId),
        data: formData,
        options: Options(
          contentType: 'multipart/form-data',
          extra: options.extra,
        ),
      ),
      apiName: 'addDisputeEvidence',
      dataParser: (json) =>
          DisputeEvidenceRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<DisputeDetailRespDto>> cancelDispute(
    int disputeId,
  ) async {
    return safeApiCall<DisputeDetailRespDto>(
      apiCall: (options) =>
          _dio.put(ApiEndpoint.disputeCancel(disputeId), options: options),
      apiName: 'cancelDispute',
      dataParser: (json) =>
          DisputeDetailRespDto.fromJson(json as Map<String, dynamic>),
    );
  }
}
