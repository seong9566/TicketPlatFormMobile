import 'package:ticket_platform_mobile/features/auth/domain/repositories/auth_repository.dart';

class FindIdUseCase {
  final AuthRepository _repository;

  FindIdUseCase(this._repository);

  Future<String> call(String phoneNumber) async {
    return await _repository.findId(phoneNumber);
  }
}
