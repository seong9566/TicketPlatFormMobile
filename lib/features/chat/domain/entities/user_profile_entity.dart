import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_entity.freezed.dart';

@freezed
abstract class UserProfileEntity with _$UserProfileEntity {
  const factory UserProfileEntity({
    required int userId,
    required String nickname,
    String? profileImageUrl,
    required double mannerTemperature,
  }) = _UserProfileEntity;
}
