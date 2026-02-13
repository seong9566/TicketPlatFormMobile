import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/dispute/domain/entities/dispute_entity.dart';

part 'dispute_list_resp_dto.freezed.dart';
part 'dispute_list_resp_dto.g.dart';

@freezed
abstract class DisputeListRespDto with _$DisputeListRespDto {
  const factory DisputeListRespDto({
    @Default([]) List<DisputeListItemRespDto> items,
    String? nextCursor,
    @Default(false) bool hasMore,
  }) = _DisputeListRespDto;

  factory DisputeListRespDto.fromJson(Map<String, dynamic> json) =>
      _$DisputeListRespDtoFromJson(json);
}

@freezed
abstract class DisputeListItemRespDto with _$DisputeListItemRespDto {
  const factory DisputeListItemRespDto({
    required int id,
    required int transactionId,
    required String typeCode,
    required String typeName,
    required String statusCode,
    required String statusName,
    required String description,
    @Default(0) int evidenceCount,
    required String createdAt,
  }) = _DisputeListItemRespDto;

  factory DisputeListItemRespDto.fromJson(Map<String, dynamic> json) =>
      _$DisputeListItemRespDtoFromJson(json);
}

extension DisputeListRespDtoX on DisputeListRespDto {
  DisputeListEntity toEntity() {
    return DisputeListEntity(
      items: items.map((e) => e.toEntity()).toList(),
      nextCursor: nextCursor,
      hasMore: hasMore,
    );
  }
}

extension DisputeListItemRespDtoX on DisputeListItemRespDto {
  DisputeListItemEntity toEntity() {
    return DisputeListItemEntity(
      id: id,
      transactionId: transactionId,
      typeCode: disputeTypeCodeFromServer(typeCode),
      typeName: typeName,
      statusCode: disputeStatusCodeFromServer(statusCode),
      statusName: statusName,
      description: description,
      evidenceCount: evidenceCount,
      createdAt: DateTime.parse(createdAt),
    );
  }
}
