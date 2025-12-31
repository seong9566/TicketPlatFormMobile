import 'package:ticket_platform_mobile/features/ticketing/domain/entities/ticketing_info_entity.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/repositories/ticketing_repository.dart';

class GetTicketDetailUseCase {
  final TicketingRepository _repository;

  GetTicketDetailUseCase(this._repository);

  Future<TicketingTicketEntity> call(int ticketId) async {
    return await _repository.getTicketDetail(ticketId);
  }
}
