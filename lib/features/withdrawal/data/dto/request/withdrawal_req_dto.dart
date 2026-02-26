class WithdrawalReqDto {
  final int amount;
  final int? bankAccountId;
  final String idempotencyKey;

  const WithdrawalReqDto({
    required this.amount,
    this.bankAccountId,
    required this.idempotencyKey,
  });

  Map<String, dynamic> toMap() {
    return {
      'amount': amount,
      if (bankAccountId != null) 'bankAccountId': bankAccountId,
    };
  }
}
