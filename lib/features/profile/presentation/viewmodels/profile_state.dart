import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/ui_models/my_profile_ui_model.dart';

part 'profile_state.freezed.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({MyProfileUiModel? profile}) = _ProfileState;
}
