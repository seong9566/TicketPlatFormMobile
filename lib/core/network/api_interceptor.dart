import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor {
  ApiInterceptor({required this.getToken});

  final Future<String?> Function() getToken;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await getToken();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }
}
