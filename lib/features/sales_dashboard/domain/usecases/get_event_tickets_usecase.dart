import 'package:ticket_platform_mobile/features/sales_dashboard/domain/entities/event_ticket_entity.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/domain/repositories/sales_dashboard_repository.dart';

class GetEventTicketsUsecase {
  final SalesDashboardRepository _repository;

  GetEventTicketsUsecase(this._repository);

  Future<EventTicketListEntity> call({
    required int eventId,
    int page = 1,
    int size = 20,
  }) {
    return _repository.getEventTickets(
      eventId: eventId,
      page: page,
      size: size,
    );
  }
}
