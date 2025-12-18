import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/features/home/data/datasources/home_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/home/data/dto/response/home_resp_dto.dart';
import 'package:ticket_platform_mobile/features/home/domain/entities/home_entity.dart';
import 'package:ticket_platform_mobile/features/home/domain/repositories/home_repository.dart';

part 'home_repository_impl.g.dart';

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(this._remoteDataSource);

  final HomeRemoteDataSource _remoteDataSource;

  @override
  Future<HomeEntity> getHomeData() async {
    final response = await _remoteDataSource.getHomeData();
    return response.dataOrThrow.toEntity();
  }
}

@riverpod
HomeRepository homeRepository(Ref ref) {
  return HomeRepositoryImpl(ref.watch(homeRemoteDataSourceProvider));
}
