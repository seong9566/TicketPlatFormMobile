class FavoriteToggleReqDto {
  final int userId;
  final int ticketId;

  FavoriteToggleReqDto({required this.userId, required this.ticketId});

  Map<String, dynamic> toMap() {
    return {'userId': userId, 'ticketId': ticketId};
  }
}
