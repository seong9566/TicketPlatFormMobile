import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/withdrawal/data/dto/response/balance_transaction_resp_dto.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/entities/balance_history_entity.dart';

part 'balance_history_resp_dto.freezed.dart';
part 'balance_history_resp_dto.g.dart';

@freezed
abstract class BalanceHistoryRespDto with _$BalanceHistoryRespDto {
  const factory BalanceHistoryRespDto({
    @Default([]) List<BalanceTransactionRespDto> items,
    required int totalCount,
    required int page,
    required int pageSize,
  }) = _BalanceHistoryRespDto;

  factory BalanceHistoryRespDto.fromJson(Map<String, dynamic> json) =>
      _$BalanceHistoryRespDtoFromJson(json);
}

extension BalanceHistoryRespDtoX on BalanceHistoryRespDto {
  BalanceHistoryEntity toEntity() {
    return BalanceHistoryEntity(
      items: items.map((item) => item.toEntity()).toList(),
      totalCount: totalCount,
      page: page,
      pageSize: pageSize,
    );
  }
}
