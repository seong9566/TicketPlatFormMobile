import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/profile/domain/entities/my_profile_entity.dart';

part 'my_profile_resp_dto.freezed.dart';
part 'my_profile_resp_dto.g.dart';

@freezed
abstract class MyProfileRespDto with _$MyProfileRespDto {
  const factory MyProfileRespDto({
    required int userId,
    required String nickname,
    String? profileImageUrl,
    String? bio,
    double? mannerTemperature,
    int? totalTradeCount,
  }) = _MyProfileRespDto;

  factory MyProfileRespDto.fromJson(Map<String, dynamic> json) =>
      _$MyProfileRespDtoFromJson(json);
}

extension MyProfileRespDtoX on MyProfileRespDto {
  MyProfileEntity toEntity() => MyProfileEntity(
    userId: userId,
    nickname: nickname,
    profileImageUrl: profileImageUrl,
    bio: bio,
    mannerTemperature: mannerTemperature ?? 36.5,
    totalTradeCount: totalTradeCount ?? 0,
  );
}
