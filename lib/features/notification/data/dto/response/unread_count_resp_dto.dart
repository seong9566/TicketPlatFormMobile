import 'package:freezed_annotation/freezed_annotation.dart';

part 'unread_count_resp_dto.freezed.dart';
part 'unread_count_resp_dto.g.dart';

@freezed
abstract class UnreadCountRespDto with _$UnreadCountRespDto {
  const factory UnreadCountRespDto({@Default(0) int unreadCount}) =
      _UnreadCountRespDto;

  factory UnreadCountRespDto.fromJson(Map<String, dynamic> json) =>
      _$UnreadCountRespDtoFromJson(json);
}
