import 'package:ticket_platform_mobile/features/bank_account/domain/repositories/bank_account_repository.dart';

class RequestVerificationResult {
  const RequestVerificationResult({
    required this.expiresAt,
    required this.provider,
    required this.verificationTier,
    this.reasonCode,
  });

  final DateTime? expiresAt;
  final String provider;
  final String verificationTier;
  final String? reasonCode;
}

class RequestVerificationUsecase {
  RequestVerificationUsecase(this._repository);

  final BankAccountRepository _repository;

  Future<RequestVerificationResult> call() {
    return _repository.requestVerification();
  }
}
