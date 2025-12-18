import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/home/domain/usecases/get_home_data_usecase.dart';
import 'package:ticket_platform_mobile/features/home/presentation/ui_models/home_ui_model.dart';

part 'home_viewmodel.g.dart';

@riverpod
class HomeViewModel extends _$HomeViewModel {
  @override
  FutureOr<HomeUiModel> build() async {
    return _fetchHomeData();
  }

  Future<HomeUiModel> _fetchHomeData() async {
    final entity = await ref.read(getHomeDataUsecaseProvider).call();
    return HomeUiModel.fromEntity(entity);
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchHomeData());
  }
}
