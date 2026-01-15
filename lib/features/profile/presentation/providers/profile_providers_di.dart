import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:ticket_platform_mobile/features/profile/domain/usecases/get_my_profile_usecase.dart';

part 'profile_providers_di.g.dart';

@riverpod
GetMyProfileUsecase getMyProfileUsecase(Ref ref) {
  return GetMyProfileUsecase(ref.read(profileRepositoryProvider));
}
