import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_toggle_resp_dto.freezed.dart';
part 'favorite_toggle_resp_dto.g.dart';

@freezed
abstract class FavoriteToggleRespDto with _$FavoriteToggleRespDto {
  const factory FavoriteToggleRespDto({
    required int ticketId,
    required bool isFavorited,
  }) = _FavoriteToggleRespDto;

  factory FavoriteToggleRespDto.fromJson(Map<String, dynamic> json) =>
      _$FavoriteToggleRespDtoFromJson(json);
}
