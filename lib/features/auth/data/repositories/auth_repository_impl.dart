import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/storage/token_storage.dart';
import 'package:ticket_platform_mobile/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/auth/data/dto/request/auth_req_dto.dart';
import 'package:ticket_platform_mobile/features/auth/data/dto/request/social_login_req_dto.dart';
import 'package:ticket_platform_mobile/features/auth/data/dto/response/auth_resp_dto.dart';
import 'package:ticket_platform_mobile/features/auth/domain/entities/sign_up_entity.dart';
import 'package:ticket_platform_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:ticket_platform_mobile/features/auth/domain/repositories/auth_repository.dart';

part 'auth_repository_impl.g.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;
  final TokenStorage _tokenStorage;

  AuthRepositoryImpl(this._remoteDataSource, this._tokenStorage);

  @override
  Future<UserEntity> login(LoginReqDto req) async {
    try {
      final response = await _remoteDataSource.login(req);
      final dto = response.dataOrThrow;

      // Token 저장
      await _tokenStorage.saveTokens(
        accessToken: dto.accessToken,
        refreshToken: dto.refreshToken,
        expiresAt: dto.expiresAt,
      );

      return dto.toEntity();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> socialLogin({
    required String provider,
    required String accessToken,
  }) async {
    try {
      final req = SocialLoginReqDto(
        provider: provider,
        accessToken: accessToken,
      );
      final response = await _remoteDataSource.socialLogin(req);
      final dto = response.dataOrThrow;

      await _tokenStorage.saveTokens(
        accessToken: dto.accessToken,
        refreshToken: dto.refreshToken,
        expiresAt: dto.expiresAt,
      );

      return dto.toEntity();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SignUpEntity> signUp(SignUpReqDto req) async {
    try {
      final response = await _remoteDataSource.signUp(req);
      final dto = response.dataOrThrow;
      return dto.toEntity();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> logout() async {
    try {
      await _remoteDataSource.logout();
    } finally {
      await _tokenStorage.clearTokens();
    }
  }

  @override
  Future<bool> refreshToken() async {
    final refreshToken = await _tokenStorage.getRefreshToken();
    if (refreshToken == null) return false;

    try {
      final response = await _remoteDataSource.refreshToken(refreshToken);
      final dto = response.dataOrThrow;

      await _tokenStorage.saveTokens(
        accessToken: dto.accessToken,
        refreshToken: dto.refreshToken,
        expiresAt: dto.expiresAt,
      );
      return true;
    } catch (e) {
      await _tokenStorage.clearTokens();
      return false;
    }
  }

  @override
  Future<bool> hasToken() async {
    return await _tokenStorage.hasToken();
  }
}

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepositoryImpl(
    ref.watch(authRemoteDataSourceProvider),
    ref.watch(tokenStorageProvider),
  );
}
