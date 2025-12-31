import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/ticketing/data/datasources/ticketing_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/ticketing/data/repositories/ticketing_repository_impl.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/repositories/ticketing_repository.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/usecases/get_ticketing_info_usecase.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/usecases/get_ticket_detail_usecase.dart';

part 'ticketing_providers_di.g.dart';

@riverpod
TicketingRepository ticketingRepository(Ref ref) {
  return TicketingRepositoryImpl(ref.watch(ticketingRemoteDataSourceProvider));
}

@riverpod
GetTicketingInfoUseCase getTicketingInfoUseCase(Ref ref) {
  return GetTicketingInfoUseCase(ref.watch(ticketingRepositoryProvider));
}

@riverpod
GetTicketDetailUseCase getTicketDetailUseCase(Ref ref) {
  return GetTicketDetailUseCase(ref.watch(ticketingRepositoryProvider));
}
