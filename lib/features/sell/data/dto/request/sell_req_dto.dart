import 'dart:io';

/// 공연 목록 조회 요청
class SellEventsReqDto {
  final int categoryId;
  final String? keyword;
  final int page;
  final int size;

  const SellEventsReqDto({
    required this.categoryId,
    this.keyword,
    this.page = 1,
    this.size = 20,
  });

  Map<String, dynamic> toMap() => {
    'categoryId': categoryId,
    if (keyword != null && keyword!.isNotEmpty) 'keyword': keyword,
    'page': page,
    'size': size,
  };
}

/// 내 티켓 목록 조회 요청
class SellMyTicketsReqDto {
  final String? status;
  final int page;
  final int size;

  const SellMyTicketsReqDto({this.status, this.page = 1, this.size = 20});

  Map<String, dynamic> toMap() => {
    if (status != null && status!.isNotEmpty) 'status': status,
    'page': page,
    'size': size,
  };
}

/// 좌석 정가 조회 요청
class SellOriginalPriceReqDto {
  final int eventId;
  final int gradeId;
  final int? locationId;
  final int? areaId;

  const SellOriginalPriceReqDto({
    required this.eventId,
    required this.gradeId,
    this.locationId,
    this.areaId,
  });

  Map<String, dynamic> toMap() => {
    'eventId': eventId,
    'gradeId': gradeId,
    if (locationId != null) 'locationId': locationId,
    if (areaId != null) 'areaId': areaId,
  };
}

/// 티켓 등록 요청 (multipart/form-data)
class SellTicketRegisterReqDto {
  final int eventId;
  final String scheduleId;
  final int seatGradeId;
  final int? locationId;
  final int? areaId;
  final String? row;
  final int quantity;
  final bool isConsecutive;
  final int price;
  final int originalPrice;
  final int tradeMethodId;
  final bool hasTicket;
  final String? description;
  final List<File> images;
  final List<int> featureIds;

  const SellTicketRegisterReqDto({
    required this.eventId,
    required this.scheduleId,
    required this.seatGradeId,
    this.locationId,
    this.areaId,
    this.row,
    required this.quantity,
    this.isConsecutive = false,
    required this.price,
    required this.originalPrice,
    required this.tradeMethodId,
    required this.hasTicket,
    this.description,
    this.images = const [],
    this.featureIds = const [],
  });

  Map<String, dynamic> toMap() => {
    'eventId': eventId,
    'scheduleId': scheduleId,
    'seatGradeId': seatGradeId,
    if (locationId != null) 'locationId': locationId,
    if (areaId != null) 'areaId': areaId,
    if (row != null) 'row': row,
    'quantity': quantity,
    'isConsecutive': isConsecutive,
    'price': price,
    'originalPrice': originalPrice,
    'tradeMethodId': tradeMethodId,
    'hasTicket': hasTicket,
    if (description != null) 'description': description,
  };
}
