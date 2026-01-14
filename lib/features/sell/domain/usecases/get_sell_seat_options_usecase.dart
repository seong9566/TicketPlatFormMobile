import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_seat_option_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/repositories/sell_repository.dart';

class GetSellSeatOptionsUsecase {
  final SellRepository _repository;

  GetSellSeatOptionsUsecase(this._repository);

  Future<SellSeatOptionsEntity> call(int eventId) {
    return _repository.getSeatOptions(eventId);
  }
}
