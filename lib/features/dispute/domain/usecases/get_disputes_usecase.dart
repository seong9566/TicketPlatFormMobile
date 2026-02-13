import 'package:ticket_platform_mobile/features/dispute/domain/entities/dispute_entity.dart';
import 'package:ticket_platform_mobile/features/dispute/domain/repositories/dispute_repository.dart';

class GetDisputesUsecase {
  final DisputeRepository _repository;

  GetDisputesUsecase(this._repository);

  Future<DisputeListEntity> call({String? cursor, int? limit}) {
    return _repository.getDisputes(cursor: cursor, limit: limit);
  }
}
