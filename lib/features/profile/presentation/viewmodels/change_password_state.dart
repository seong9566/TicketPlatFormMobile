import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_state.freezed.dart';

/// 비밀번호 변경 화면 상태
@freezed
abstract class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    String? errorMessage,
    String? successMessage,
  }) = _ChangePasswordState;
}
