import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/features/ticketing/data/datasources/ticketing_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/ticketing/data/dto/response/ticketing_resp_dto.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/entities/ticketing_info_entity.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/repositories/ticketing_repository.dart';

class TicketingRepositoryImpl implements TicketingRepository {
  final TicketingRemoteDataSource _remoteDataSource;

  TicketingRepositoryImpl(this._remoteDataSource);

  @override
  Future<TicketingInfoEntity> getTicketingInfo(int eventId) async {
    final response = await _remoteDataSource.getTicketingInfo(eventId);
    return response.mapOrThrow(
      (dto) => dto.toEntity(),
      errorMessage: '티켓 정보를 불러오는데 실패했습니다.',
    );
  }

  @override
  Future<TicketingTicketEntity> getTicketDetail(int ticketId) async {
    final response = await _remoteDataSource.getTicketDetail(ticketId);
    return response.mapOrThrow(
      (dto) => dto.toEntity(),
      errorMessage: '티켓 상세 정보를 불러오는데 실패했습니다.',
    );
  }
}
