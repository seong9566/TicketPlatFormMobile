import 'package:image_picker/image_picker.dart';
import 'package:ticket_platform_mobile/features/profile/domain/entities/my_profile_entity.dart';

/// Profile Repository Interface (Domain Layer)
abstract class ProfileRepository {
  /// 내 프로필 조회
  Future<MyProfileEntity> getMyProfile();

  /// 내 프로필 수정
  Future<MyProfileEntity> updateProfile({
    String? nickname,
    String? bio,
    XFile? profileImage,
    bool removeProfileImage = false,
  });

  /// 다른 사용자 프로필 조회
  Future<MyProfileEntity> getUserProfile(int userId);

  /// 프로필 이미지 URL 갱신
  /// [userId]가 null이면 본인의 URL 갱신
  Future<String?> refreshProfileImageUrl({int? userId});

  /// 비밀번호 변경
  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  });
}
