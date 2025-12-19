import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/events/data/datasources/events_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/events/data/repositories/events_repository_impl.dart';
import 'package:ticket_platform_mobile/features/events/domain/repositories/events_repository.dart';
import 'package:ticket_platform_mobile/features/events/domain/usecases/get_events_usecase.dart';

part 'events_providers_di.g.dart';

@riverpod
EventsRepository eventsRepository(Ref ref) {
  return EventsRepositoryImpl(ref.watch(eventsRemoteDataSourceProvider));
}

@riverpod
GetEventsUsecase getEventsUsecase(Ref ref) {
  return GetEventsUsecase(ref.watch(eventsRepositoryProvider));
}
