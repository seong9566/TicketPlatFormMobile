import 'dart:io';

import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_ticket_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/repositories/sell_repository.dart';

class RegisterSellTicketUsecase {
  final SellRepository _repository;

  RegisterSellTicketUsecase(this._repository);

  Future<SellTicketRegisterResult> call({
    required int eventId,
    required String scheduleId,
    required int seatGradeId,
    int? locationId,
    int? areaId,
    String? row,
    required int quantity,
    bool isConsecutive = false,
    required int price,
    required int originalPrice,
    required int tradeMethodId,
    required bool hasTicket,
    String? description,
    List<File> images = const [],
    List<int> featureIds = const [],
  }) {
    return _repository.registerTicket(
      eventId: eventId,
      scheduleId: scheduleId,
      seatGradeId: seatGradeId,
      locationId: locationId,
      areaId: areaId,
      row: row,
      quantity: quantity,
      isConsecutive: isConsecutive,
      price: price,
      originalPrice: originalPrice,
      tradeMethodId: tradeMethodId,
      hasTicket: hasTicket,
      description: description,
      images: images,
      featureIds: featureIds,
    );
  }
}
