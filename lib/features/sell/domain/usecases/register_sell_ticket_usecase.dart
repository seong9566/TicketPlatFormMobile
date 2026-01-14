import 'dart:io';

import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_ticket_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/repositories/sell_repository.dart';

class RegisterSellTicketUsecase {
  final SellRepository _repository;

  RegisterSellTicketUsecase(this._repository);

  Future<SellTicketRegisterResult> call({
    required int eventId,
    required String scheduleId,
    String? locationId,
    String? area,
    String? row,
    required String seatInfo,
    bool isConsecutive = false,
    required int quantity,
    required int price,
    required int originalPrice,
    String? description,
    List<File> images = const [],
  }) {
    return _repository.registerTicket(
      eventId: eventId,
      scheduleId: scheduleId,
      locationId: locationId,
      area: area,
      row: row,
      seatInfo: seatInfo,
      isConsecutive: isConsecutive,
      quantity: quantity,
      price: price,
      originalPrice: originalPrice,
      description: description,
      images: images,
    );
  }
}
