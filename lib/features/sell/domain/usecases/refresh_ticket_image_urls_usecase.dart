import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_ticket_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/repositories/sell_repository.dart';

class RefreshTicketImageUrlsUsecase {
  final SellRepository _repository;

  RefreshTicketImageUrlsUsecase(this._repository);

  Future<List<TicketImageEntity>> call(int ticketId) {
    return _repository.refreshTicketImageUrls(ticketId);
  }
}
