import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/ticketing/data/datasources/ticketing_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/ticketing/data/repositories/ticketing_repository_impl.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/repositories/ticketing_repository.dart';

part 'ticketing_providers_di.g.dart';

@riverpod
TicketingRepository ticketingRepository(Ref ref) {
  return TicketingRepositoryImpl(ref.watch(ticketingRemoteDataSourceProvider));
}
