import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_refresh_resp_dto.freezed.dart';
part 'image_refresh_resp_dto.g.dart';

/// 프로필 이미지 URL 갱신 응답 DTO
@freezed
abstract class ImageRefreshRespDto with _$ImageRefreshRespDto {
  const factory ImageRefreshRespDto({String? profileImageUrl}) =
      _ImageRefreshRespDto;

  factory ImageRefreshRespDto.fromJson(Map<String, dynamic> json) =>
      _$ImageRefreshRespDtoFromJson(json);
}
