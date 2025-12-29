import 'package:ticket_platform_mobile/core/enums/category.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/features/events/data/datasources/events_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/events/data/dto/response/event_resp_dto.dart';
import 'package:ticket_platform_mobile/features/events/domain/entities/event_entity.dart';
import 'package:ticket_platform_mobile/features/events/domain/repositories/events_repository.dart';

class EventsRepositoryImpl implements EventsRepository {
  final EventsRemoteDataSource _remoteDataSource;

  EventsRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<EventEntity>> getEvents(Category category) async {
    final response = await _remoteDataSource.getEvents(category);
    return response.mapListOrEmpty((dto) => dto.toEntity(category));
  }
}
