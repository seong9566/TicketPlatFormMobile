import 'package:ticket_platform_mobile/features/sales_dashboard/domain/entities/event_group_entity.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/domain/repositories/sales_dashboard_repository.dart';

class GetSalesDashboardUsecase {
  final SalesDashboardRepository _repository;

  GetSalesDashboardUsecase(this._repository);

  Future<SalesDashboardEntity> call({
    String? status,
    int page = 1,
    int size = 20,
  }) {
    return _repository.getSalesDashboard(
      status: status,
      page: page,
      size: size,
    );
  }
}
