import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/enums/category.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/network/dio_provider.dart';
import 'package:ticket_platform_mobile/core/network/safe_api_call.dart';
import 'package:ticket_platform_mobile/features/events/data/dto/response/event_resp_dto.dart';

part 'events_remote_data_source.g.dart';

abstract class EventsRemoteDataSource {
  Future<BaseResponse<EventListRespDto>> getEvents(Category category);
}

class EventsRemoteDataSourceImpl implements EventsRemoteDataSource {
  final Dio _dio;

  EventsRemoteDataSourceImpl(this._dio);

  @override
  Future<BaseResponse<EventListRespDto>> getEvents(Category category) async {
    return safeApiCall<EventListRespDto>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.events,
        queryParameters: {'categoryId': category.categoryId},
        options: options,
      ),
      apiName: 'getEvents',
      dataParser: (json) => EventListRespDto.fromJson(json),
    );
  }
}

@riverpod
EventsRemoteDataSource eventsRemoteDataSource(Ref ref) {
  return EventsRemoteDataSourceImpl(ref.watch(dioProvider));
}
