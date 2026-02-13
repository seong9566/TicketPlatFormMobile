import 'package:ticket_platform_mobile/features/dispute/domain/entities/dispute_entity.dart';

class CreateDisputeReqDto {
  final int transactionId;
  final DisputeTypeCode typeCode;
  final String description;

  const CreateDisputeReqDto({
    required this.transactionId,
    required this.typeCode,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      'transactionId': transactionId,
      'typeCode': _typeCodeToServer(typeCode),
      'description': description,
    };
  }

  String _typeCodeToServer(DisputeTypeCode value) {
    switch (value) {
      case DisputeTypeCode.fakeTicket:
        return 'FAKE_TICKET';
      case DisputeTypeCode.wrongTicket:
        return 'WRONG_TICKET';
      case DisputeTypeCode.noDelivery:
        return 'NO_DELIVERY';
      case DisputeTypeCode.rudeBehavior:
        return 'RUDE_BEHAVIOR';
      case DisputeTypeCode.other:
        return 'OTHER';
    }
  }
}
