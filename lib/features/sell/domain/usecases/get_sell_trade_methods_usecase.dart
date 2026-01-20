import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_trade_method_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/repositories/sell_repository.dart';

class GetSellTradeMethodsUsecase {
  final SellRepository _repository;

  GetSellTradeMethodsUsecase(this._repository);

  Future<List<SellTradeMethodEntity>> call() async {
    return _repository.getTradeMethods();
  }
}
