import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/data/datasources/sales_dashboard_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/data/dto/response/sales_dashboard_resp_dto.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/data/dto/response/event_ticket_list_resp_dto.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/domain/entities/event_group_entity.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/domain/entities/event_ticket_entity.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/domain/repositories/sales_dashboard_repository.dart';

class SalesDashboardRepositoryImpl implements SalesDashboardRepository {
  final SalesDashboardRemoteDataSource _remoteDataSource;

  SalesDashboardRepositoryImpl(this._remoteDataSource);

  @override
  Future<SalesDashboardEntity> getSalesDashboard({
    String? status,
    int page = 1,
    int size = 20,
  }) async {
    final response = await _remoteDataSource.getSalesDashboard(
      status: status,
      page: page,
      size: size,
    );
    return response.mapOrThrow(
      (dto) => dto.toEntity(),
      errorMessage: '판매 대시보드를 불러오지 못했습니다.',
    );
  }

  @override
  Future<EventTicketListEntity> getEventTickets({
    required int eventId,
    int page = 1,
    int size = 20,
  }) async {
    final response = await _remoteDataSource.getEventTickets(
      eventId: eventId,
      page: page,
      size: size,
    );
    return response.mapOrThrow(
      (dto) => dto.toEntity(),
      errorMessage: '공연별 티켓 목록을 불러오지 못했습니다.',
    );
  }
}
