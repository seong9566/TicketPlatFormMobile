import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:ticket_platform_mobile/features/profile/data/repositories/transaction_history_repository_impl.dart';
import 'package:ticket_platform_mobile/features/profile/domain/usecases/change_password_usecase.dart';
import 'package:ticket_platform_mobile/features/profile/domain/usecases/get_my_profile_usecase.dart';
import 'package:ticket_platform_mobile/features/profile/domain/usecases/get_purchases_history_usecase.dart';
import 'package:ticket_platform_mobile/features/profile/domain/usecases/get_user_profile_usecase.dart';
import 'package:ticket_platform_mobile/features/profile/domain/usecases/refresh_profile_image_usecase.dart';
import 'package:ticket_platform_mobile/features/profile/domain/usecases/update_my_profile_usecase.dart';

part 'profile_providers_di.g.dart';

@riverpod
GetMyProfileUsecase getMyProfileUsecase(Ref ref) {
  return GetMyProfileUsecase(ref.read(profileRepositoryProvider));
}

@riverpod
UpdateMyProfileUsecase updateMyProfileUsecase(Ref ref) {
  return UpdateMyProfileUsecase(ref.read(profileRepositoryProvider));
}

@riverpod
GetUserProfileUsecase getUserProfileUsecase(Ref ref) {
  return GetUserProfileUsecase(ref.read(profileRepositoryProvider));
}

@riverpod
RefreshProfileImageUsecase refreshProfileImageUsecase(Ref ref) {
  return RefreshProfileImageUsecase(ref.read(profileRepositoryProvider));
}

@riverpod
GetPurchasesHistoryUsecase getPurchasesHistoryUsecase(Ref ref) {
  return GetPurchasesHistoryUsecase(
    ref.read(transactionHistoryRepositoryProvider),
  );
}

@riverpod
ChangePasswordUsecase changePasswordUsecase(Ref ref) {
  return ChangePasswordUsecase(ref.read(profileRepositoryProvider));
}
