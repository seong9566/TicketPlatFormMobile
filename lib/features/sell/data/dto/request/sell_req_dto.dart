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

/// 티켓 등록 요청 (multipart/form-data)
class SellTicketRegisterReqDto {
  final int eventId;
  final String scheduleId;
  final String? locationId;
  final String? area;
  final String? row;
  final String seatInfo;
  final bool isConsecutive;
  final int quantity;
  final int price;
  final int originalPrice;
  final String? description;
  final List<File> images;

  const SellTicketRegisterReqDto({
    required this.eventId,
    required this.scheduleId,
    this.locationId,
    this.area,
    this.row,
    required this.seatInfo,
    this.isConsecutive = false,
    required this.quantity,
    required this.price,
    required this.originalPrice,
    this.description,
    this.images = const [],
  });

  Map<String, dynamic> toMap() => {
    'eventId': eventId,
    'scheduleId': scheduleId,
    if (locationId != null) 'locationId': locationId,
    if (area != null) 'area': area,
    if (row != null) 'row': row,
    'seatInfo': seatInfo,
    'isConsecutive': isConsecutive,
    'quantity': quantity,
    'price': price,
    'originalPrice': originalPrice,
    if (description != null) 'description': description,
  };
}
