import 'package:flutter_test/flutter_test.dart';
import 'package:ticket_platform_mobile/features/auth/data/dto/response/auth_resp_dto.dart';
import 'package:ticket_platform_mobile/features/auth/data/dto/response/find_id_res_dto.dart';
import 'package:ticket_platform_mobile/features/auth/domain/entities/sign_up_entity.dart';
import 'package:ticket_platform_mobile/features/auth/domain/entities/user_entity.dart';

void main() {
  group('AuthRespDto', () {
    test('fromJson이 모든 필드를 정확하게 파싱한다', () {
      final json = {
        'id': 42,
        'email': 'user@example.com',
        'role': 'user',
        'provider': 'email',
        'lastLoginAt': '2024-01-01T00:00:00',
        'accessToken': 'access_token_value',
        'refreshToken': 'refresh_token_value',
        'expiresIn': 3600,
        'tokenType': 'Bearer',
        'expiresAt': '2024-01-01T01:00:00',
      };

      final dto = AuthRespDto.fromJson(json);

      expect(dto.id, 42);
      expect(dto.email, 'user@example.com');
      expect(dto.role, 'user');
      expect(dto.provider, 'email');
      expect(dto.lastLoginAt, '2024-01-01T00:00:00');
      expect(dto.accessToken, 'access_token_value');
      expect(dto.refreshToken, 'refresh_token_value');
      expect(dto.expiresIn, 3600);
      expect(dto.tokenType, 'Bearer');
      expect(dto.expiresAt, '2024-01-01T01:00:00');
    });

    test('fromJson은 id가 없을 때 userId를 사용한다', () {
      final json = {
        'userId': 99,
        'email': 'user@example.com',
        'role': 'seller',
        'provider': 'google',
        'accessToken': 'access',
        'refreshToken': 'refresh',
        'expiresIn': 1800,
        'tokenType': 'Bearer',
        'expiresAt': '2024-01-01T01:00:00',
      };

      final dto = AuthRespDto.fromJson(json);
      expect(dto.id, 99);
    });

    test('fromJson은 필드 누락 시 기본값을 사용한다', () {
      final json = <String, dynamic>{'id': 1};

      final dto = AuthRespDto.fromJson(json);
      expect(dto.email, '');
      expect(dto.role, 'user');
      expect(dto.provider, 'email');
      expect(dto.lastLoginAt, isNull);
      expect(dto.tokenType, 'Bearer');
      expect(dto.expiresAt, '');
    });

    test('fromJson은 num 타입 id를 int로 변환한다', () {
      final json = {
        'id': 7.0, // double coming from JSON
        'email': 'a@b.com',
        'role': 'user',
        'provider': 'email',
        'accessToken': '',
        'refreshToken': '',
        'expiresIn': 0,
        'tokenType': 'Bearer',
        'expiresAt': '',
      };

      final dto = AuthRespDto.fromJson(json);
      expect(dto.id, 7);
    });

    test('toEntity()가 UserEntity를 올바르게 생성한다', () {
      const dto = AuthRespDto(
        id: 1,
        email: 'user@example.com',
        role: 'user',
        provider: 'email',
        lastLoginAt: '2024-01-01',
        accessToken: 'access',
        refreshToken: 'refresh',
        expiresIn: 3600,
        tokenType: 'Bearer',
        expiresAt: '2024-01-01T01:00:00',
      );

      final entity = dto.toEntity();

      expect(entity, isA<UserEntity>());
      expect(entity.id, 1);
      expect(entity.email, 'user@example.com');
      expect(entity.role, 'user');
      expect(entity.provider, 'email');
      expect(entity.lastLoginAt, '2024-01-01');
    });

    test('toEntity()는 lastLoginAt이 null인 경우를 처리한다', () {
      const dto = AuthRespDto(
        id: 5,
        email: 'x@y.com',
        role: 'seller',
        provider: 'kakao',
        accessToken: 'tok',
        refreshToken: 'ref',
        expiresIn: 0,
        tokenType: 'Bearer',
        expiresAt: '',
      );

      final entity = dto.toEntity();
      expect(entity.lastLoginAt, isNull);
    });
  });

  group('SignUpRespDto', () {
    test('fromJson이 모든 필드를 파싱한다', () {
      final json = {
        'email': 'newuser@example.com',
        'phone': '010-1234-5678',
        'role': 'user',
        'provider': 'email',
      };

      final dto = SignUpRespDto.fromJson(json);

      expect(dto.email, 'newuser@example.com');
      expect(dto.phone, '010-1234-5678');
      expect(dto.role, 'user');
      expect(dto.provider, 'email');
    });

    test('toEntity()가 SignUpEntity를 올바르게 생성한다', () {
      const dto = SignUpRespDto(
        email: 'new@example.com',
        phone: '010-0000-0000',
        role: 'user',
        provider: 'email',
      );

      final entity = dto.toEntity();

      expect(entity, isA<SignUpEntity>());
      expect(entity.email, 'new@example.com');
      expect(entity.phone, '010-0000-0000');
      expect(entity.role, 'user');
      expect(entity.provider, 'email');
    });
  });

  group('FindIdResDto', () {
    test('fromJson이 maskedEmail을 파싱한다', () {
      final json = {'maskedEmail': 't***@example.com'};

      final dto = FindIdResDto.fromJson(json);

      expect(dto.maskedEmail, 't***@example.com');
    });

    test('fromJson은 maskedEmail이 없을 때 빈 문자열을 반환한다', () {
      final json = <String, dynamic>{};

      final dto = FindIdResDto.fromJson(json);

      expect(dto.maskedEmail, '');
    });

    test('const 생성자로 직접 생성이 가능하다', () {
      const dto = FindIdResDto(maskedEmail: 'a***@b.com');
      expect(dto.maskedEmail, 'a***@b.com');
    });
  });

  group('TokenRespDto', () {
    test('const 생성자로 모든 필드를 설정할 수 있다', () {
      const dto = TokenRespDto(
        accessToken: 'new_access',
        refreshToken: 'new_refresh',
        expiresIn: 3600,
        tokenType: 'Bearer',
        expiresAt: '2024-01-01T01:00:00',
      );

      expect(dto.accessToken, 'new_access');
      expect(dto.refreshToken, 'new_refresh');
      expect(dto.expiresIn, 3600);
      expect(dto.tokenType, 'Bearer');
      expect(dto.expiresAt, '2024-01-01T01:00:00');
    });
  });
}
