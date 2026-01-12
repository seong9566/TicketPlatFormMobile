class FavoriteToggleReqDto {
  final int ticketId;

  FavoriteToggleReqDto({required this.ticketId});

  Map<String, dynamic> toMap() {
    return {'ticketId': ticketId};
  }
}
