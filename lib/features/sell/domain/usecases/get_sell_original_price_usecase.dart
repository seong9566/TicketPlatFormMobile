import 'package:ticket_platform_mobile/features/sell/domain/repositories/sell_repository.dart';

class GetSellOriginalPriceUsecase {
  final SellRepository _repository;

  GetSellOriginalPriceUsecase(this._repository);

  Future<int?> call({
    required int eventId,
    required int gradeId,
    int? locationId,
    int? areaId,
  }) {
    return _repository.getOriginalPrice(
      eventId: eventId,
      gradeId: gradeId,
      locationId: locationId,
      areaId: areaId,
    );
  }
}
