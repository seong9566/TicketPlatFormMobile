import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_entity.freezed.dart';

@freezed
abstract class SignUpEntity with _$SignUpEntity {
  const factory SignUpEntity({
    required String email,
    required String phone,
    required String role,
    required String provider,
  }) = _SignUpEntity;
}
