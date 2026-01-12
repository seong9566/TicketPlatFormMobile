import 'package:freezed_annotation/freezed_annotation.dart';

part 'find_id_state.freezed.dart';

@freezed
abstract class FindIdState with _$FindIdState {
  const factory FindIdState({
    @Default('') String phoneNumber,
    @Default(false) bool isLoading,
    String? errorMessage,
    String? foundId,
  }) = _FindIdState;
}
