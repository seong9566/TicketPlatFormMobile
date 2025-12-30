import 'package:ticket_platform_mobile/features/ticketing/domain/entities/ticketing_info_entity.dart';

abstract class TicketingRepository {
  Future<TicketingInfoEntity> getTicketingInfo(int eventId);
}
