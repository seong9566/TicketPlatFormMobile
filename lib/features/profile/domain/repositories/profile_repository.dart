import 'package:ticket_platform_mobile/features/profile/domain/entities/my_profile_entity.dart';

/// Profile Repository Interface (Domain Layer)
abstract class ProfileRepository {
  Future<MyProfileEntity> getMyProfile();
}
