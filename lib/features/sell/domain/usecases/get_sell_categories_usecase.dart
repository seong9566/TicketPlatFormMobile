import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_category_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/repositories/sell_repository.dart';

class GetSellCategoriesUsecase {
  final SellRepository _repository;

  GetSellCategoriesUsecase(this._repository);

  Future<List<SellCategoryEntity>> call() {
    return _repository.getCategories();
  }
}
