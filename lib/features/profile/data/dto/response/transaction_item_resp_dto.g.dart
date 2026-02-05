// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_item_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionItemRespDto _$TransactionItemRespDtoFromJson(
  Map<String, dynamic> json,
) => _TransactionItemRespDto(
  transactionId: (json['transactionId'] as num).toInt(),
  ticketId: (json['ticketId'] as num).toInt(),
  ticketTitle: json['ticketTitle'] as String,
  ticketThumbnailUrl: json['ticketThumbnailUrl'] as String?,
  eventDateTime: json['eventDateTime'] as String,
  venueName: json['venueName'] as String?,
  seatInfo: json['seatInfo'] as String?,
  quantity: (json['quantity'] as num).toInt(),
  unitPrice: (json['unitPrice'] as num).toInt(),
  totalAmount: (json['totalAmount'] as num).toInt(),
  statusCode: json['statusCode'] as String,
  statusName: json['statusName'] as String,
  buyer: json['buyer'] == null
      ? null
      : TransactionUserRespDto.fromJson(json['buyer'] as Map<String, dynamic>),
  seller: json['seller'] == null
      ? null
      : TransactionUserRespDto.fromJson(json['seller'] as Map<String, dynamic>),
  roomId: (json['roomId'] as num?)?.toInt(),
  createdAt: json['createdAt'] as String,
  paidAt: json['paidAt'] as String?,
  confirmedAt: json['confirmedAt'] as String?,
  cancelledAt: json['cancelledAt'] as String?,
);

Map<String, dynamic> _$TransactionItemRespDtoToJson(
  _TransactionItemRespDto instance,
) => <String, dynamic>{
  'transactionId': instance.transactionId,
  'ticketId': instance.ticketId,
  'ticketTitle': instance.ticketTitle,
  'ticketThumbnailUrl': instance.ticketThumbnailUrl,
  'eventDateTime': instance.eventDateTime,
  'venueName': instance.venueName,
  'seatInfo': instance.seatInfo,
  'quantity': instance.quantity,
  'unitPrice': instance.unitPrice,
  'totalAmount': instance.totalAmount,
  'statusCode': instance.statusCode,
  'statusName': instance.statusName,
  'buyer': instance.buyer,
  'seller': instance.seller,
  'roomId': instance.roomId,
  'createdAt': instance.createdAt,
  'paidAt': instance.paidAt,
  'confirmedAt': instance.confirmedAt,
  'cancelledAt': instance.cancelledAt,
};

_TransactionUserRespDto _$TransactionUserRespDtoFromJson(
  Map<String, dynamic> json,
) => _TransactionUserRespDto(
  userId: (json['userId'] as num).toInt(),
  nickname: json['nickname'] as String?,
  profileImageUrl: json['profileImageUrl'] as String?,
);

Map<String, dynamic> _$TransactionUserRespDtoToJson(
  _TransactionUserRespDto instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'nickname': instance.nickname,
  'profileImageUrl': instance.profileImageUrl,
};
