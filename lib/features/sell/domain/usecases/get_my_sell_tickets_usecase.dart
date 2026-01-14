import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_ticket_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/repositories/sell_repository.dart';

class GetMySellTicketsUsecase {
  final SellRepository _repository;

  GetMySellTicketsUsecase(this._repository);

  Future<SellMyTicketsPageEntity> call({
    String? status,
    int page = 1,
    int size = 20,
  }) {
    return _repository.getMyTickets(status: status, page: page, size: size);
  }
}
