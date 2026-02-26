import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/withdrawal/data/dto/response/withdrawal_resp_dto.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/entities/withdrawal_history_entity.dart';

part 'withdrawal_history_resp_dto.freezed.dart';
part 'withdrawal_history_resp_dto.g.dart';

@freezed
abstract class WithdrawalHistoryRespDto with _$WithdrawalHistoryRespDto {
  const factory WithdrawalHistoryRespDto({
    @Default([]) List<WithdrawalRespDto> items,
    required int totalCount,
    required int page,
    required int pageSize,
  }) = _WithdrawalHistoryRespDto;

  factory WithdrawalHistoryRespDto.fromJson(Map<String, dynamic> json) =>
      _$WithdrawalHistoryRespDtoFromJson(json);
}

extension WithdrawalHistoryRespDtoX on WithdrawalHistoryRespDto {
  WithdrawalHistoryEntity toEntity() {
    return WithdrawalHistoryEntity(
      items: items.map((item) => item.toEntity()).toList(),
      totalCount: totalCount,
      page: page,
      pageSize: pageSize,
    );
  }
}
