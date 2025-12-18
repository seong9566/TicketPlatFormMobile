import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/home/data/repositories/home_repository_impl.dart';
import 'package:ticket_platform_mobile/features/home/domain/entities/home_entity.dart';
import 'package:ticket_platform_mobile/features/home/domain/repositories/home_repository.dart';

part 'get_home_data_usecase.g.dart';

class GetHomeDataUsecase {
  GetHomeDataUsecase(this._repository);

  final HomeRepository _repository;

  Future<HomeEntity> call() async {
    return _repository.getHomeData();
  }
}

@riverpod
GetHomeDataUsecase getHomeDataUsecase(Ref ref) {
  return GetHomeDataUsecase(ref.watch(homeRepositoryProvider));
}
