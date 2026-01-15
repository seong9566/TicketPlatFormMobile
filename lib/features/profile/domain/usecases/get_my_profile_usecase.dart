import 'package:ticket_platform_mobile/features/profile/domain/entities/my_profile_entity.dart';
import 'package:ticket_platform_mobile/features/profile/domain/repositories/profile_repository.dart';

/// 내 프로필 조회 UseCase
class GetMyProfileUsecase {
  final ProfileRepository _repository;

  GetMyProfileUsecase(this._repository);

  Future<MyProfileEntity> call() => _repository.getMyProfile();
}
