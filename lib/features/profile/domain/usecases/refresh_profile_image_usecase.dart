import 'package:ticket_platform_mobile/features/profile/domain/repositories/profile_repository.dart';

/// 프로필 이미지 URL 갱신 UseCase
class RefreshProfileImageUsecase {
  final ProfileRepository _repository;

  RefreshProfileImageUsecase(this._repository);

  /// 프로필 이미지 URL 갱신
  /// [userId]가 null이면 본인의 URL 갱신
  /// 반환: 새로운 Signed URL (이미지 없으면 null)
  Future<String?> call({int? userId}) {
    return _repository.refreshProfileImageUrl(userId: userId);
  }
}
