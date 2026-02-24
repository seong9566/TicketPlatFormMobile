import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/dio_provider.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/data/datasources/sales_dashboard_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/data/repositories/sales_dashboard_repository_impl.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/domain/repositories/sales_dashboard_repository.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/domain/usecases/get_sales_dashboard_usecase.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/domain/usecases/get_event_tickets_usecase.dart';

part 'sales_dashboard_providers_di.g.dart';

@riverpod
SalesDashboardRemoteDataSource salesDashboardRemoteDataSource(Ref ref) {
  return SalesDashboardRemoteDataSourceImpl(ref.watch(dioProvider));
}

@riverpod
SalesDashboardRepository salesDashboardRepository(Ref ref) {
  return SalesDashboardRepositoryImpl(
    ref.watch(salesDashboardRemoteDataSourceProvider),
  );
}

@riverpod
GetSalesDashboardUsecase getSalesDashboardUsecase(Ref ref) {
  return GetSalesDashboardUsecase(ref.watch(salesDashboardRepositoryProvider));
}

@riverpod
GetEventTicketsUsecase getEventTicketsUsecase(Ref ref) {
  return GetEventTicketsUsecase(ref.watch(salesDashboardRepositoryProvider));
}
