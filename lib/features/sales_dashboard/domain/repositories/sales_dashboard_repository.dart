import 'package:ticket_platform_mobile/features/sales_dashboard/domain/entities/event_group_entity.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/domain/entities/event_ticket_entity.dart';

abstract class SalesDashboardRepository {
  Future<SalesDashboardEntity> getSalesDashboard({
    String? status,
    int page = 1,
    int size = 20,
  });

  Future<EventTicketListEntity> getEventTickets({
    required int eventId,
    int page = 1,
    int size = 20,
  });
}
