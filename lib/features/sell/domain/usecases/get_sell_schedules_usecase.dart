import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_schedule_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/repositories/sell_repository.dart';

class GetSellSchedulesUsecase {
  final SellRepository _repository;

  GetSellSchedulesUsecase(this._repository);

  Future<List<SellScheduleEntity>> call(int eventId) {
    return _repository.getSchedules(eventId);
  }
}
