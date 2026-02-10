import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/profile/data/datasources/profile_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/profile/data/dto/request/change_password_req_dto.dart';
import 'package:ticket_platform_mobile/features/profile/data/dto/request/update_profile_req_dto.dart';
import 'package:ticket_platform_mobile/features/profile/data/dto/response/my_profile_resp_dto.dart';
import 'package:ticket_platform_mobile/features/profile/domain/entities/my_profile_entity.dart';
import 'package:ticket_platform_mobile/features/profile/domain/repositories/profile_repository.dart';

part 'profile_repository_impl.g.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDataSource _remoteDataSource;

  ProfileRepositoryImpl(this._remoteDataSource);

  @override
  Future<MyProfileEntity> getMyProfile() async {
    try {
      final response = await _remoteDataSource.getMyProfile();
      return response.mapOrThrow(
        (dto) => dto.toEntity(),
        errorMessage: '프로필 정보를 불러올 수 없습니다.',
      );
    } catch (e) {
      AppLogger.e('프로필 조회 실패', e);
      rethrow;
    }
  }

  @override
  Future<MyProfileEntity> updateProfile({
    String? nickname,
    String? bio,
    XFile? profileImage,
    bool removeProfileImage = false,
  }) async {
    try {
      final reqDto = UpdateProfileReqDto(
        nickname: nickname,
        bio: bio,
        profileImage: profileImage,
        removeProfileImage: removeProfileImage,
      );
      final response = await _remoteDataSource.updateMyProfile(reqDto);
      return response.mapOrThrow(
        (dto) => dto.toEntity(),
        errorMessage: '프로필 수정에 실패했습니다.',
      );
    } catch (e) {
      AppLogger.e('프로필 수정 실패', e);
      rethrow;
    }
  }

  @override
  Future<MyProfileEntity> getUserProfile(int userId) async {
    try {
      final response = await _remoteDataSource.getUserProfile(userId);
      return response.mapOrThrow(
        (dto) => dto.toEntity(),
        errorMessage: '사용자 프로필을 불러올 수 없습니다.',
      );
    } catch (e) {
      AppLogger.e('사용자 프로필 조회 실패', e);
      rethrow;
    }
  }

  @override
  Future<String?> refreshProfileImageUrl({int? userId}) async {
    try {
      final response = await _remoteDataSource.refreshProfileImageUrl(
        userId: userId,
      );
      return response.data?.profileImageUrl;
    } catch (e) {
      AppLogger.e('프로필 이미지 URL 갱신 실패', e);
      rethrow;
    }
  }

  @override
  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    try {
      final reqDto = ChangePasswordReqDto(
        currentPassword: currentPassword,
        newPassword: newPassword,
      );
      final response = await _remoteDataSource.changePassword(reqDto);
      if (!response.isSuccess) {
        final message = response.message.isNotEmpty
            ? response.message
            : '비밀번호 변경에 실패했습니다.';
        throw Exception(message);
      }
    } catch (e) {
      AppLogger.e('비밀번호 변경 실패', e);
      rethrow;
    }
  }
}

@riverpod
ProfileRepository profileRepository(Ref ref) {
  return ProfileRepositoryImpl(ref.read(profileRemoteDataSourceProvider));
}
