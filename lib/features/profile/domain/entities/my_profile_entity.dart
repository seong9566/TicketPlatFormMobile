import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_profile_entity.freezed.dart';

@freezed
abstract class MyProfileEntity with _$MyProfileEntity {
  const factory MyProfileEntity({
    required int userId,
    required String email,
    String? provider,
    required String nickname,
    String? profileImageUrl,
    String? bio,
    required double mannerTemperature,
    required int totalTradeCount,
  }) = _MyProfileEntity;
}
