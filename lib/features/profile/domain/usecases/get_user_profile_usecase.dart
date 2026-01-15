import 'package:ticket_platform_mobile/features/profile/domain/entities/my_profile_entity.dart';
import 'package:ticket_platform_mobile/features/profile/domain/repositories/profile_repository.dart';

/// 다른 사용자 프로필 조회 UseCase
class GetUserProfileUsecase {
  final ProfileRepository _repository;

  GetUserProfileUsecase(this._repository);

  /// 사용자 프로필 조회 실행
  /// [userId] 조회할 사용자 ID
  Future<MyProfileEntity> call(int userId) {
    return _repository.getUserProfile(userId);
  }
}
