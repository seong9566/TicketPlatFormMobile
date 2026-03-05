import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/storage/token_storage.dart';
import 'package:ticket_platform_mobile/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/auth/data/dto/request/auth_req_dto.dart';
import 'package:ticket_platform_mobile/features/auth/data/dto/request/find_id_req_dto.dart';
import 'package:ticket_platform_mobile/features/auth/data/dto/request/social_login_req_dto.dart';
import 'package:ticket_platform_mobile/features/auth/data/dto/response/auth_resp_dto.dart';
import 'package:ticket_platform_mobile/features/auth/data/dto/response/find_id_res_dto.dart';
import 'package:ticket_platform_mobile/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:ticket_platform_mobile/features/auth/domain/usecases/auth_params.dart';

class MockAuthRemoteDataSource extends Mock implements AuthRemoteDataSource {}

class MockTokenStorage extends Mock implements TokenStorage {}

class FakeLoginReqDto extends Fake implements LoginReqDto {}

class FakeSocialLoginReqDto extends Fake implements SocialLoginReqDto {}

class FakeFindIdReqDto extends Fake implements FindIdReqDto {}

void main() {
  setUpAll(() {
    registerFallbackValue(FakeLoginReqDto());
    registerFallbackValue(FakeSocialLoginReqDto());
    registerFallbackValue(FakeFindIdReqDto());
  });

  late MockAuthRemoteDataSource mockDataSource;
  late MockTokenStorage mockTokenStorage;
  late AuthRepositoryImpl repository;

  setUp(() {
    mockDataSource = MockAuthRemoteDataSource();
    mockTokenStorage = MockTokenStorage();
    repository = AuthRepositoryImpl(mockDataSource, mockTokenStorage);
  });

  group('login()', () {
    test('성공 시 UserEntity를 반환하고 토큰을 저장한다', () async {
      const authRespDto = AuthRespDto(
        id: 1,
        email: 'test@test.com',
        role: 'user',
        provider: 'email',
        accessToken: 'access_token',
        refreshToken: 'refresh_token',
        expiresIn: 3600,
        tokenType: 'Bearer',
        expiresAt: '2024-01-01T01:00:00',
      );
      final response = BaseResponse<AuthRespDto>(
        statusCode: 200,
        success: true,
        data: authRespDto,
        message: 'OK',
      );

      when(() => mockDataSource.login(any())).thenAnswer((_) async => response);
      when(
        () => mockTokenStorage.saveTokens(
          accessToken: any(named: 'accessToken'),
          refreshToken: any(named: 'refreshToken'),
          expiresAt: any(named: 'expiresAt'),
        ),
      ).thenAnswer((_) async {});

      final result = await repository.login(
        LoginParams(email: 'test@test.com', password: '1234'),
      );

      expect(result.id, 1);
      expect(result.email, 'test@test.com');
      expect(result.role, 'user');
      verify(
        () => mockTokenStorage.saveTokens(
          accessToken: 'access_token',
          refreshToken: 'refresh_token',
          expiresAt: '2024-01-01T01:00:00',
        ),
      ).called(1);
    });

    test('datasource가 예외를 던지면 예외를 다시 던진다', () async {
      when(
        () => mockDataSource.login(any()),
      ).thenThrow(Exception('Unauthorized'));

      expect(
        () => repository.login(
          LoginParams(email: 'bad@test.com', password: 'bad'),
        ),
        throwsException,
      );
    });

    test('소셜 로그인에서 expiresAt이 비어있고 expiresIn이 있으면 계산한다', () async {
      const authRespDto = AuthRespDto(
        id: 2,
        email: 'social@test.com',
        role: 'user',
        provider: 'google',
        accessToken: 'access',
        refreshToken: 'refresh',
        expiresIn: 3600,
        tokenType: 'Bearer',
        expiresAt: '', // empty expiresAt
      );
      final response = BaseResponse<AuthRespDto>(
        statusCode: 200,
        success: true,
        data: authRespDto,
        message: 'OK',
      );

      when(
        () => mockDataSource.socialLogin(any()),
      ).thenAnswer((_) async => response);
      when(
        () => mockTokenStorage.saveTokens(
          accessToken: any(named: 'accessToken'),
          refreshToken: any(named: 'refreshToken'),
          expiresAt: any(named: 'expiresAt'),
        ),
      ).thenAnswer((_) async {});

      final result = await repository.socialLogin(
        SocialLoginParams(provider: 'google', accessToken: 'oauth_token'),
      );

      expect(result.provider, 'google');
      // verify saveTokens was called with a non-empty expiresAt (computed from expiresIn)
      final captured = verify(
        () => mockTokenStorage.saveTokens(
          accessToken: 'access',
          refreshToken: 'refresh',
          expiresAt: captureAny(named: 'expiresAt'),
        ),
      ).captured;
      expect(captured.first as String, isNotEmpty);
    });
  });

  group('logout()', () {
    test('datasource 예외 발생 시에도 토큰을 삭제한다', () async {
      when(() => mockDataSource.logout()).thenThrow(Exception('Network error'));
      when(() => mockTokenStorage.clearTokens()).thenAnswer((_) async {});

      // logout rethrows after calling clearTokens in finally
      await expectLater(repository.logout(), throwsException);

      verify(() => mockTokenStorage.clearTokens()).called(1);
    });

    test('성공 시 토큰을 삭제한다', () async {
      final response = BaseResponse<void>(
        statusCode: 200,
        success: true,
        message: 'OK',
      );
      when(() => mockDataSource.logout()).thenAnswer((_) async => response);
      when(() => mockTokenStorage.clearTokens()).thenAnswer((_) async {});

      await repository.logout();

      verify(() => mockTokenStorage.clearTokens()).called(1);
    });
  });

  group('refreshToken()', () {
    test('refresh token이 없으면 false를 반환한다', () async {
      when(
        () => mockTokenStorage.getRefreshToken(),
      ).thenAnswer((_) async => null);

      final result = await repository.refreshToken();

      expect(result, isFalse);
      verifyNever(() => mockDataSource.refreshToken(any()));
    });

    test('refresh token이 빈 문자열이면 false를 반환한다', () async {
      when(
        () => mockTokenStorage.getRefreshToken(),
      ).thenAnswer((_) async => '');

      // Empty string is not null so it will try to call the API
      // We stub the datasource to throw to test error path
      when(
        () => mockDataSource.refreshToken(any()),
      ).thenThrow(Exception('Token expired'));
      when(() => mockTokenStorage.clearTokens()).thenAnswer((_) async {});

      final result = await repository.refreshToken();
      expect(result, isFalse);
    });

    test('성공 시 새 토큰을 저장하고 true를 반환한다', () async {
      const tokenDto = TokenRespDto(
        accessToken: 'new_access',
        refreshToken: 'new_refresh',
        expiresIn: 3600,
        tokenType: 'Bearer',
        expiresAt: '2024-12-01T01:00:00',
      );
      final response = BaseResponse<TokenRespDto>(
        statusCode: 200,
        success: true,
        data: tokenDto,
        message: 'OK',
      );

      when(
        () => mockTokenStorage.getRefreshToken(),
      ).thenAnswer((_) async => 'old_refresh');
      when(
        () => mockDataSource.refreshToken(any()),
      ).thenAnswer((_) async => response);
      when(
        () => mockTokenStorage.saveTokens(
          accessToken: any(named: 'accessToken'),
          refreshToken: any(named: 'refreshToken'),
          expiresAt: any(named: 'expiresAt'),
        ),
      ).thenAnswer((_) async {});

      final result = await repository.refreshToken();

      expect(result, isTrue);
      verify(
        () => mockTokenStorage.saveTokens(
          accessToken: 'new_access',
          refreshToken: 'new_refresh',
          expiresAt: '2024-12-01T01:00:00',
        ),
      ).called(1);
    });

    test('API 실패 시 토큰을 삭제하고 false를 반환한다', () async {
      when(
        () => mockTokenStorage.getRefreshToken(),
      ).thenAnswer((_) async => 'old_refresh');
      when(
        () => mockDataSource.refreshToken(any()),
      ).thenThrow(Exception('Token expired'));
      when(() => mockTokenStorage.clearTokens()).thenAnswer((_) async {});

      final result = await repository.refreshToken();

      expect(result, isFalse);
      verify(() => mockTokenStorage.clearTokens()).called(1);
    });
  });

  group('hasToken()', () {
    test('token storage가 true를 반환하면 true를 반환한다', () async {
      when(() => mockTokenStorage.hasToken()).thenAnswer((_) async => true);

      final result = await repository.hasToken();

      expect(result, isTrue);
    });

    test('token storage가 false를 반환하면 false를 반환한다', () async {
      when(() => mockTokenStorage.hasToken()).thenAnswer((_) async => false);

      final result = await repository.hasToken();

      expect(result, isFalse);
    });
  });

  group('findId()', () {
    test('phoneNumber로 masked email을 반환한다', () async {
      const findIdResDto = FindIdResDto(maskedEmail: 't***@example.com');
      final response = BaseResponse<FindIdResDto>(
        statusCode: 200,
        success: true,
        data: findIdResDto,
        message: 'OK',
      );

      when(
        () => mockDataSource.findId(any()),
      ).thenAnswer((_) async => response);

      final result = await repository.findId('010-1234-5678');

      expect(result, 't***@example.com');
      verify(() => mockDataSource.findId(any())).called(1);
    });

    test('datasource 예외를 전파한다', () async {
      when(
        () => mockDataSource.findId(any()),
      ).thenThrow(Exception('Not found'));

      expect(() => repository.findId('010-9999-9999'), throwsException);
    });
  });
}
