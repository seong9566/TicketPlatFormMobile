import 'package:freezed_annotation/freezed_annotation.dart';

part 'balance_entity.freezed.dart';

@freezed
abstract class BalanceEntity with _$BalanceEntity {
  const factory BalanceEntity({
    required int available,
    required int pending,
    required int totalEarned,
    required int totalWithdrawn,
  }) = _BalanceEntity;
}
