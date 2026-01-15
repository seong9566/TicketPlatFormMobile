import 'package:image_picker/image_picker.dart';
import 'package:ticket_platform_mobile/features/profile/domain/entities/my_profile_entity.dart';
import 'package:ticket_platform_mobile/features/profile/domain/repositories/profile_repository.dart';

/// 내 프로필 수정 UseCase
class UpdateMyProfileUsecase {
  final ProfileRepository _repository;

  UpdateMyProfileUsecase(this._repository);

  /// 프로필 수정 실행
  /// [nickname] 변경할 닉네임 (null이면 변경 안함)
  /// [bio] 변경할 자기소개 (null이면 변경 안함)
  /// [profileImage] 변경할 프로필 이미지 (null이면 변경 안함)
  /// [removeProfileImage] true면 프로필 이미지 삭제
  Future<MyProfileEntity> call({
    String? nickname,
    String? bio,
    XFile? profileImage,
    bool removeProfileImage = false,
  }) {
    return _repository.updateProfile(
      nickname: nickname,
      bio: bio,
      profileImage: profileImage,
      removeProfileImage: removeProfileImage,
    );
  }
}
