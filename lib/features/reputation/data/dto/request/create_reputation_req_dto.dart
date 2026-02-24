class CreateReputationReqDto {
  const CreateReputationReqDto({
    required this.transactionId,
    required this.score,
  });

  final int transactionId;
  final int score;

  Map<String, dynamic> toMap() {
    return {'transactionId': transactionId, 'score': score};
  }
}
