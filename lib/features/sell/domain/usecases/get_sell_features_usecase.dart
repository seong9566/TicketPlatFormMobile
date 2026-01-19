import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_feature_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/repositories/sell_repository.dart';

class GetSellFeaturesUsecase {
  final SellRepository _repository;

  GetSellFeaturesUsecase(this._repository);

  Future<List<SellFeatureEntity>> call() {
    return _repository.getFeatures();
  }
}
