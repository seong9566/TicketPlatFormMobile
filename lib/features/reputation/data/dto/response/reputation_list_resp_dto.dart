import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/reputation/data/dto/response/reputation_resp_dto.dart';

part 'reputation_list_resp_dto.freezed.dart';
part 'reputation_list_resp_dto.g.dart';

@freezed
abstract class ReputationListRespDto with _$ReputationListRespDto {
  const factory ReputationListRespDto({
    @Default(<ReputationRespDto>[]) List<ReputationRespDto> items,
    String? nextCursor,
    @Default(false) bool hasNext,
  }) = _ReputationListRespDto;

  factory ReputationListRespDto.fromJson(Map<String, dynamic> json) =>
      _$ReputationListRespDtoFromJson(json);
}
