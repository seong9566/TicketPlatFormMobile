import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/profile/data/datasources/profile_remote_data_source.dart';
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
}

@riverpod
ProfileRepository profileRepository(Ref ref) {
  return ProfileRepositoryImpl(ref.read(profileRemoteDataSourceProvider));
}
