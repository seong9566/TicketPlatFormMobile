import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/payment/data/datasources/payment_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/payment/data/dto/request/payment_confirm_req_dto.dart';
import 'package:ticket_platform_mobile/features/payment/data/dto/request/payment_request_req_dto.dart';
import 'package:ticket_platform_mobile/features/payment/data/dto/response/payment_confirm_resp_dto.dart';
import 'package:ticket_platform_mobile/features/payment/data/dto/response/payment_request_resp_dto.dart';
import 'package:ticket_platform_mobile/features/payment/domain/entities/payment_entities.dart';
import 'package:ticket_platform_mobile/features/payment/domain/repositories/payment_repository.dart';

class PaymentRepositoryImpl implements PaymentRepository {
  final PaymentRemoteDataSource _remoteDataSource;

  PaymentRepositoryImpl(this._remoteDataSource);

  @override
  Future<PaymentRequestEntity> requestPayment(PaymentRequestReqDto req) async {
    try {
      final response = await _remoteDataSource.requestPayment(req);
      return response.mapOrThrow(
        (dto) => dto.toEntity(),
        errorMessage: '결제 요청 실패',
      );
    } catch (e) {
      AppLogger.e('결제 요청 실패', e);
      rethrow;
    }
  }

  @override
  Future<PaymentConfirmEntity> confirmPayment(PaymentConfirmReqDto req) async {
    try {
      final response = await _remoteDataSource.confirmPayment(req);
      return response.mapOrThrow(
        (dto) => dto.toEntity(),
        errorMessage: '결제 승인 실패',
      );
    } catch (e) {
      AppLogger.e('결제 승인 실패', e);
      rethrow;
    }
  }

  @override
  Future<bool> cancelPayment(int transactionId, String reason) async {
    try {
      final response = await _remoteDataSource.cancelPayment(
        transactionId,
        reason,
      );
      return response.data ?? false;
    } catch (e) {
      AppLogger.e('결제 취소 실패', e);
      rethrow;
    }
  }
}
