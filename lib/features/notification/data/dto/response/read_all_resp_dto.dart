import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_all_resp_dto.freezed.dart';
part 'read_all_resp_dto.g.dart';

@freezed
abstract class ReadAllRespDto with _$ReadAllRespDto {
  const factory ReadAllRespDto({@Default(0) int updatedCount}) =
      _ReadAllRespDto;

  factory ReadAllRespDto.fromJson(Map<String, dynamic> json) =>
      _$ReadAllRespDtoFromJson(json);
}
