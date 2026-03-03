import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/settlement/data/dto/response/settlement_resp_dto.dart';
import 'package:ticket_platform_mobile/features/settlement/domain/entities/settlement_entity.dart';

part 'settlement_list_resp_dto.freezed.dart';
part 'settlement_list_resp_dto.g.dart';

@freezed
abstract class SettlementListRespDto with _$SettlementListRespDto {
  const factory SettlementListRespDto({
    @Default([]) List<SettlementRespDto> settlements,
    required int totalCount,
    required int totalNetAmount,
  }) = _SettlementListRespDto;

  factory SettlementListRespDto.fromJson(Map<String, dynamic> json) =>
      _$SettlementListRespDtoFromJson(json);
}

extension SettlementListRespDtoX on SettlementListRespDto {
  SettlementListEntity toEntity() {
    return SettlementListEntity(
      settlements: settlements.map((e) => e.toEntity()).toList(),
      totalCount: totalCount,
      totalNetAmount: totalNetAmount,
    );
  }
}
