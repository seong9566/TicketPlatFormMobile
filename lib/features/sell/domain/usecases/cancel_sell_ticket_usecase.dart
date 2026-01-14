import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_ticket_entity.dart';
import 'package:ticket_platform_mobile/features/sell/domain/repositories/sell_repository.dart';

class CancelSellTicketUsecase {
  final SellRepository _repository;

  CancelSellTicketUsecase(this._repository);

  Future<SellTicketCancelResult> call(int ticketId) {
    return _repository.cancelTicket(ticketId);
  }
}
