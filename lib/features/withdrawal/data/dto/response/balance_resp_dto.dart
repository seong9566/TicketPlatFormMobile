import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/entities/balance_entity.dart';

part 'balance_resp_dto.freezed.dart';
part 'balance_resp_dto.g.dart';

@freezed
abstract class BalanceRespDto with _$BalanceRespDto {
  const factory BalanceRespDto({
    required int available,
    required int pending,
    required int totalEarned,
    required int totalWithdrawn,
  }) = _BalanceRespDto;

  factory BalanceRespDto.fromJson(Map<String, dynamic> json) =>
      _$BalanceRespDtoFromJson(json);
}

extension BalanceRespDtoX on BalanceRespDto {
  BalanceEntity toEntity() {
    return BalanceEntity(
      available: available,
      pending: pending,
      totalEarned: totalEarned,
      totalWithdrawn: totalWithdrawn,
    );
  }
}
