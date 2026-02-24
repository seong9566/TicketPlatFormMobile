import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/profile/domain/entities/my_profile_entity.dart';

part 'my_profile_ui_model.freezed.dart';

@freezed
abstract class MyProfileUiModel with _$MyProfileUiModel {
  const factory MyProfileUiModel({
    required int userId,
    required String email,
    String? provider,
    required String nickname,
    String? profileImageUrl,
    String? bio,
    required String mannerTemperatureText,
    required String totalTradeCountText,
    double? averageRating,
    @Default(0) int reviewCount,
  }) = _MyProfileUiModel;

  factory MyProfileUiModel.fromEntity(MyProfileEntity entity) {
    return MyProfileUiModel(
      userId: entity.userId,
      email: entity.email,
      provider: entity.provider,
      nickname: entity.nickname.isEmpty ? '닉네임 없음' : entity.nickname,
      profileImageUrl: entity.profileImageUrl,
      bio: entity.bio,
      mannerTemperatureText: '${entity.mannerTemperature.toStringAsFixed(1)}°C',
      totalTradeCountText: '${entity.totalTradeCount}회',
      averageRating: entity.averageRating,
      reviewCount: entity.reviewCount,
    );
  }
}
