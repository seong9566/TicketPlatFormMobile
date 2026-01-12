import 'package:ticket_platform_mobile/core/error/failures.dart';

mixin ErrorHandler {
  String handleError(Object error) {
    if (error is Failure) {
      return error.when(
        server: (message) => message,
        network: () => '네트워크 연결이 불안정합니다. 잠시 후 선택해 주세요.',
        unauthorized: () => '인증 정보가 만료되었습니다. 다시 로그인해 주세요.',
        notFound: () => '요청하신 정보를 찾을 수 없습니다.',
        unknown: (message) => message,
      );
    }
    return '알 수 없는 오류가 발생했습니다. 다시 시도해주세요.';
  }
}
