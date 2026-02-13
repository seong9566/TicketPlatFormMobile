class GetDisputesReqDto {
  final String? cursor;
  final int? limit;

  const GetDisputesReqDto({this.cursor, this.limit});

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    if (cursor != null && cursor!.isNotEmpty) {
      map['cursor'] = cursor;
    }
    if (limit != null) {
      map['limit'] = limit;
    }
    return map;
  }
}
