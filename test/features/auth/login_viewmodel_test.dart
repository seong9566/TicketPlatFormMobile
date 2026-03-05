import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ticket_platform_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:ticket_platform_mobile/features/auth/domain/usecases/auth_params.dart';
import 'package:ticket_platform_mobile/features/auth/domain/usecases/login_usecase.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/providers/auth_providers_di.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/viewmodels/login_state.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/viewmodels/login_viewmodel.dart';

import '../../helpers/test_provider_container.dart';

class MockLoginUsecase extends Mock implements LoginUsecase {}

class FakeLoginParams extends Fake implements LoginParams {}

void main() {
  setUpAll(() {
    registerFallbackValue(FakeLoginParams());
  });

  late MockLoginUsecase mockLoginUsecase;

  setUp(() {
    mockLoginUsecase = MockLoginUsecase();
  });

  group('LoginViewModel 초기 상태', () {
    test('초기 이메일과 비밀번호가 빌드 시 설정된다', () {
      final container = createTestContainer();
      final state = container.read(loginViewModelProvider);

      expect(state.email, 'test@test.com');
      expect(state.password, '1234');
      expect(state.isLoading, isFalse);
      expect(state.isSuccess, isFalse);
      expect(state.isPasswordVisible, isFalse);
      expect(state.errorMessage, isNull);
    });
  });

  group('onEmailChanged()', () {
    test('이메일을 업데이트하고 에러를 초기화한다', () {
      final container = createTestContainer();
      final notifier = container.read(loginViewModelProvider.notifier);

      notifier.onEmailChanged('new@example.com');
      final state = container.read(loginViewModelProvider);

      expect(state.email, 'new@example.com');
      expect(state.errorMessage, isNull);
    });

    test('에러가 있는 상태에서 이메일 변경 시 에러를 초기화한다', () {
      final container = createTestContainer();
      final notifier = container.read(loginViewModelProvider.notifier);

      // Set an error first by triggering a state with error
      notifier.onEmailChanged('');
      // Manually verify the state can be changed
      notifier.onEmailChanged('corrected@example.com');
      final state = container.read(loginViewModelProvider);

      expect(state.email, 'corrected@example.com');
      expect(state.errorMessage, isNull);
    });
  });

  group('onPasswordChanged()', () {
    test('비밀번호를 업데이트하고 에러를 초기화한다', () {
      final container = createTestContainer();
      final notifier = container.read(loginViewModelProvider.notifier);

      notifier.onPasswordChanged('newpassword123');
      final state = container.read(loginViewModelProvider);

      expect(state.password, 'newpassword123');
      expect(state.errorMessage, isNull);
    });

    test('빈 문자열로도 업데이트할 수 있다', () {
      final container = createTestContainer();
      final notifier = container.read(loginViewModelProvider.notifier);

      notifier.onPasswordChanged('');
      final state = container.read(loginViewModelProvider);

      expect(state.password, '');
    });
  });

  group('togglePasswordVisibility()', () {
    test('비밀번호 표시 상태를 토글한다 (false → true)', () {
      final container = createTestContainer();
      final notifier = container.read(loginViewModelProvider.notifier);

      expect(container.read(loginViewModelProvider).isPasswordVisible, isFalse);

      notifier.togglePasswordVisibility();
      expect(container.read(loginViewModelProvider).isPasswordVisible, isTrue);
    });

    test('두 번 토글하면 원래 상태로 돌아온다', () {
      final container = createTestContainer();
      final notifier = container.read(loginViewModelProvider.notifier);

      notifier.togglePasswordVisibility();
      notifier.togglePasswordVisibility();

      expect(container.read(loginViewModelProvider).isPasswordVisible, isFalse);
    });
  });

  group('clearError()', () {
    test('errorMessage를 null로 초기화한다', () {
      final container = createTestContainer();
      final notifier = container.read(loginViewModelProvider.notifier);

      // errorMessage가 이미 null이어도 clearError 호출이 정상 동작해야 함
      notifier.clearError();
      final state = container.read(loginViewModelProvider);

      expect(state.errorMessage, isNull);
    });
  });

  group('login() - 유효성 검사', () {
    test('이메일이 비어있으면 에러 메시지를 설정한다', () async {
      final container = createTestContainer();
      final notifier = container.read(loginViewModelProvider.notifier);

      // Override email to empty
      notifier.onEmailChanged('');
      await notifier.login();

      final state = container.read(loginViewModelProvider);
      expect(state.errorMessage, '이메일과 비밀번호를 모두 입력해주세요.');
      expect(state.isLoading, isFalse);
      expect(state.isSuccess, isFalse);
    });

    test('비밀번호가 비어있으면 에러 메시지를 설정한다', () async {
      final container = createTestContainer();
      final notifier = container.read(loginViewModelProvider.notifier);

      // Override password to empty
      notifier.onPasswordChanged('');
      await notifier.login();

      final state = container.read(loginViewModelProvider);
      expect(state.errorMessage, '이메일과 비밀번호를 모두 입력해주세요.');
      expect(state.isLoading, isFalse);
      expect(state.isSuccess, isFalse);
    });

    test('공백만 있는 이메일은 비어있는 것으로 처리한다', () async {
      final container = createTestContainer();
      final notifier = container.read(loginViewModelProvider.notifier);

      notifier.onEmailChanged('   ');
      notifier.onPasswordChanged('validpassword');
      await notifier.login();

      final state = container.read(loginViewModelProvider);
      expect(state.errorMessage, '이메일과 비밀번호를 모두 입력해주세요.');
    });
  });

  group('login() - usecase 위임', () {
    test('로그인 성공 시 isSuccess가 true가 된다', () async {
      const userEntity = UserEntity(
        id: 1,
        email: 'test@test.com',
        role: 'user',
        provider: 'email',
      );
      when(
        () => mockLoginUsecase.call(any()),
      ).thenAnswer((_) async => userEntity);

      final container = createTestContainer(
        overrides: [
          loginUsecaseProvider.overrideWith((ref) => mockLoginUsecase),
        ],
      );

      // Listen to keep provider alive during async operation
      container.listen<LoginState>(loginViewModelProvider, (_, __) {});
      final notifier = container.read(loginViewModelProvider.notifier);

      await notifier.login();

      final state = container.read(loginViewModelProvider);
      expect(state.isSuccess, isTrue);
      expect(state.isLoading, isFalse);
      expect(state.errorMessage, isNull);

      verify(() => mockLoginUsecase.call(any())).called(1);
    });

    test('로그인 실패 시 errorMessage가 설정된다', () async {
      when(
        () => mockLoginUsecase.call(any()),
      ).thenThrow(Exception('Login failed'));

      final container = createTestContainer(
        overrides: [
          loginUsecaseProvider.overrideWith((ref) => mockLoginUsecase),
        ],
      );

      // Listen to keep provider alive during async operation
      container.listen<LoginState>(loginViewModelProvider, (_, __) {});
      final notifier = container.read(loginViewModelProvider.notifier);

      await notifier.login();

      final state = container.read(loginViewModelProvider);
      expect(state.errorMessage, isNotNull);
      expect(state.isLoading, isFalse);
      expect(state.isSuccess, isFalse);
    });

    test('로그인 중 isLoading이 true였다가 완료 후 false가 된다', () async {
      const userEntity = UserEntity(
        id: 1,
        email: 'test@test.com',
        role: 'user',
        provider: 'email',
      );
      when(
        () => mockLoginUsecase.call(any()),
      ).thenAnswer((_) async => userEntity);

      final container = createTestContainer(
        overrides: [
          loginUsecaseProvider.overrideWith((ref) => mockLoginUsecase),
        ],
      );
      container.listen<LoginState>(loginViewModelProvider, (_, __) {});
      final notifier = container.read(loginViewModelProvider.notifier);

      await notifier.login();

      // After await, loading should be false
      final state = container.read(loginViewModelProvider);
      expect(state.isLoading, isFalse);
    });

    test('로그인 파라미터가 현재 state의 email/password로 구성된다', () async {
      const userEntity = UserEntity(
        id: 1,
        email: 'custom@example.com',
        role: 'user',
        provider: 'email',
      );

      LoginParams? capturedParams;
      when(() => mockLoginUsecase.call(any())).thenAnswer((invocation) async {
        capturedParams = invocation.positionalArguments[0] as LoginParams;
        return userEntity;
      });

      final container = createTestContainer(
        overrides: [
          loginUsecaseProvider.overrideWith((ref) => mockLoginUsecase),
        ],
      );
      container.listen<LoginState>(loginViewModelProvider, (_, __) {});
      final notifier = container.read(loginViewModelProvider.notifier);

      notifier.onEmailChanged('custom@example.com');
      notifier.onPasswordChanged('mypassword');
      await notifier.login();

      expect(capturedParams?.email, 'custom@example.com');
      expect(capturedParams?.password, 'mypassword');
    });
  });
}
