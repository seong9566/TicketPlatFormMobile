import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ticket_platform_mobile/features/auth/domain/entities/sign_up_entity.dart';
import 'package:ticket_platform_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:ticket_platform_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:ticket_platform_mobile/features/auth/domain/usecases/auth_params.dart';
import 'package:ticket_platform_mobile/features/auth/domain/usecases/find_id_usecase.dart';
import 'package:ticket_platform_mobile/features/auth/domain/usecases/forgot_password_usecase.dart';
import 'package:ticket_platform_mobile/features/auth/domain/usecases/login_usecase.dart';
import 'package:ticket_platform_mobile/features/auth/domain/usecases/sign_up_usecase.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

class FakeLoginParams extends Fake implements LoginParams {}

class FakeSignUpParams extends Fake implements SignUpParams {}

void main() {
  setUpAll(() {
    registerFallbackValue(FakeLoginParams());
    registerFallbackValue(FakeSignUpParams());
  });

  late MockAuthRepository mockRepository;

  setUp(() {
    mockRepository = MockAuthRepository();
  });

  group('LoginUsecase', () {
    late LoginUsecase usecase;

    setUp(() {
      usecase = LoginUsecase(mockRepository);
    });

    test('repository.login()을 호출하고 UserEntity를 반환한다', () async {
      final params = LoginParams(email: 'test@test.com', password: '1234');
      const userEntity = UserEntity(
        id: 1,
        email: 'test@test.com',
        role: 'user',
        provider: 'email',
      );

      when(
        () => mockRepository.login(any()),
      ).thenAnswer((_) async => userEntity);

      final result = await usecase.call(params);

      expect(result, equals(userEntity));
      expect(result.id, 1);
      expect(result.email, 'test@test.com');
      verify(() => mockRepository.login(any())).called(1);
    });

    test('repository가 예외를 던지면 usecase도 예외를 전파한다', () async {
      final params = LoginParams(email: 'bad@test.com', password: 'wrong');
      when(
        () => mockRepository.login(any()),
      ).thenThrow(Exception('Invalid credentials'));

      expect(() => usecase.call(params), throwsException);
    });

    test('LoginParams 이메일과 비밀번호가 올바르게 전달된다', () async {
      final params = LoginParams(
        email: 'seller@example.com',
        password: 'secure123',
      );
      const userEntity = UserEntity(
        id: 2,
        email: 'seller@example.com',
        role: 'seller',
        provider: 'email',
      );

      when(
        () => mockRepository.login(any()),
      ).thenAnswer((_) async => userEntity);

      final result = await usecase.call(params);

      expect(result.role, 'seller');
      verify(() => mockRepository.login(any())).called(1);
    });
  });

  group('SignUpUsecase', () {
    late SignUpUsecase usecase;

    setUp(() {
      usecase = SignUpUsecase(mockRepository);
    });

    test('repository.signUp()을 호출하고 SignUpEntity를 반환한다', () async {
      final params = SignUpParams(
        email: 'new@test.com',
        password: '1234',
        phone: '010-1234-5678',
        role: 'user',
        provider: 'email',
      );
      const entity = SignUpEntity(
        email: 'new@test.com',
        phone: '010-1234-5678',
        role: 'user',
        provider: 'email',
      );

      when(() => mockRepository.signUp(any())).thenAnswer((_) async => entity);

      final result = await usecase.call(params);

      expect(result, equals(entity));
      expect(result.email, 'new@test.com');
      expect(result.phone, '010-1234-5678');
      verify(() => mockRepository.signUp(any())).called(1);
    });

    test('repository가 예외를 던지면 usecase도 예외를 전파한다', () async {
      final params = SignUpParams(
        email: 'dup@test.com',
        password: '1234',
        role: 'user',
        provider: 'email',
      );
      when(
        () => mockRepository.signUp(any()),
      ).thenThrow(Exception('Email already exists'));

      expect(() => usecase.call(params), throwsException);
    });
  });

  group('FindIdUseCase', () {
    late FindIdUseCase usecase;

    setUp(() {
      usecase = FindIdUseCase(mockRepository);
    });

    test('phoneNumber를 전달하여 masked email을 반환한다', () async {
      when(
        () => mockRepository.findId(any()),
      ).thenAnswer((_) async => 't***@example.com');

      final result = await usecase.call('010-1234-5678');

      expect(result, 't***@example.com');
      verify(() => mockRepository.findId('010-1234-5678')).called(1);
    });

    test('repository가 예외를 던지면 usecase도 예외를 전파한다', () async {
      when(
        () => mockRepository.findId(any()),
      ).thenThrow(Exception('Phone not found'));

      expect(() => usecase.call('010-9999-9999'), throwsException);
    });

    test('다른 전화번호로도 올바르게 위임한다', () async {
      when(
        () => mockRepository.findId(any()),
      ).thenAnswer((_) async => 'u***@domain.co.kr');

      final result = await usecase.call('010-5678-1234');

      expect(result, 'u***@domain.co.kr');
      verify(() => mockRepository.findId('010-5678-1234')).called(1);
    });
  });

  group('ForgotPasswordUseCase', () {
    late ForgotPasswordUseCase usecase;

    setUp(() {
      usecase = ForgotPasswordUseCase(mockRepository);
    });

    test('email을 전달하여 repository.forgotPassword()를 호출한다', () async {
      when(() => mockRepository.forgotPassword(any())).thenAnswer((_) async {});

      await usecase.call('user@test.com');

      verify(() => mockRepository.forgotPassword('user@test.com')).called(1);
    });

    test('repository가 예외를 던지면 usecase도 예외를 전파한다', () async {
      when(
        () => mockRepository.forgotPassword(any()),
      ).thenThrow(Exception('Email not found'));

      expect(() => usecase.call('notfound@test.com'), throwsException);
    });
  });
}
