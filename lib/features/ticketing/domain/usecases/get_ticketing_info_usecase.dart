import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/entities/ticketing_info_entity.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/repositories/ticketing_repository.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/providers/ticketing_providers_di.dart';

part 'get_ticketing_info_usecase.g.dart';

class GetTicketingInfoUseCase {
  final TicketingRepository _repository;

  GetTicketingInfoUseCase(this._repository);

  Future<TicketingInfoEntity> call(int eventId) {
    return _repository.getTicketingInfo(eventId);
  }
}

@riverpod
GetTicketingInfoUseCase getTicketingInfoUseCase(Ref ref) {
  return GetTicketingInfoUseCase(ref.watch(ticketingRepositoryProvider));
}
