import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/profile/data/dto/response/transaction_item_resp_dto.dart';
import 'package:ticket_platform_mobile/features/profile/domain/entities/transaction_list_entity.dart';

part 'transaction_list_resp_dto.freezed.dart';
part 'transaction_list_resp_dto.g.dart';

@freezed
abstract class TransactionListRespDto with _$TransactionListRespDto {
  const factory TransactionListRespDto({
    @Default([]) List<TransactionItemRespDto> items,
    String? nextCursor,
    @Default(false) bool hasMore,
    @Default(0) int totalCount,
  }) = _TransactionListRespDto;

  factory TransactionListRespDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionListRespDtoFromJson(json);
}

extension TransactionListRespDtoX on TransactionListRespDto {
  TransactionListEntity toEntity() {
    return TransactionListEntity(
      items: items.map((e) => e.toEntity()).toList(),
      nextCursor: nextCursor,
      hasMore: hasMore,
      totalCount: totalCount,
    );
  }
}
