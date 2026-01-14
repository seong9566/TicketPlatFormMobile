import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_event_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/repositories/sell_repository.dart';

class GetSellEventsUsecase {
  final SellRepository _repository;

  GetSellEventsUsecase(this._repository);

  Future<SellEventsPageEntity> call({
    required int categoryId,
    String? keyword,
    int page = 1,
    int size = 20,
  }) {
    return _repository.getEvents(
      categoryId: categoryId,
      keyword: keyword,
      page: page,
      size: size,
    );
  }
}
