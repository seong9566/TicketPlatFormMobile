import 'dart:io';

class AppConfig {
  final String apiBaseUrl;
  final String tossPaymentsClientKey;
  final String kakaoNativeAppKey;
  final String supabaseUrl;
  final String supabaseAnonKey;
  final bool isProduction;

  const AppConfig({
    required this.apiBaseUrl,
    required this.tossPaymentsClientKey,
    required this.kakaoNativeAppKey,
    required this.supabaseUrl,
    required this.supabaseAnonKey,
    required this.isProduction,
  });

  factory AppConfig.development() {
    final baseUrl = _resolveDevBaseUrl();

    return AppConfig(
      apiBaseUrl: baseUrl,
      tossPaymentsClientKey: const String.fromEnvironment(
        'TOSS_CLIENT_KEY',
        defaultValue: 'test_gck_docs_Ovk5rk1EwkEbP0W43n07xlzm',
      ),
      kakaoNativeAppKey: const String.fromEnvironment(
        'KAKAO_NATIVE_APP_KEY',
        defaultValue: '',
      ),
      supabaseUrl: const String.fromEnvironment(
        'SUPABASE_URL',
        defaultValue: '',
      ),
      supabaseAnonKey: const String.fromEnvironment(
        'SUPABASE_ANON_KEY',
        defaultValue: '',
      ),
      isProduction: false,
    );
  }

  factory AppConfig.production() {
    return AppConfig(
      apiBaseUrl: _resolveProdBaseUrl(),
      tossPaymentsClientKey: const String.fromEnvironment(
        'TOSS_CLIENT_KEY',
        defaultValue: '',
      ),
      kakaoNativeAppKey: const String.fromEnvironment(
        'KAKAO_NATIVE_APP_KEY',
        defaultValue: '',
      ),
      supabaseUrl: const String.fromEnvironment(
        'SUPABASE_URL',
        defaultValue: '',
      ),
      supabaseAnonKey: const String.fromEnvironment(
        'SUPABASE_ANON_KEY',
        defaultValue: '',
      ),
      isProduction: true,
    );
  }

  static String _resolveDevBaseUrl() {
    const overrideAll = String.fromEnvironment(
      'API_BASE_URL',
      defaultValue: '',
    );
    const overrideIos = String.fromEnvironment(
      'API_BASE_URL_IOS',
      defaultValue: '',
    );
    const overrideAndroid = String.fromEnvironment(
      'API_BASE_URL_ANDROID',
      defaultValue: '',
    );

    if (overrideAll.isNotEmpty) return overrideAll;

    if (Platform.isIOS) {
      return overrideIos.isNotEmpty ? overrideIos : 'http://192.168.2.1:5224';
    }

    return overrideAndroid.isNotEmpty
        ? overrideAndroid
        : 'http://123.2.156.230:5224';
  }

  static String _resolveProdBaseUrl() {
    const overrideAll = String.fromEnvironment(
      'API_BASE_URL',
      defaultValue: '',
    );
    const overrideProd = String.fromEnvironment(
      'API_BASE_URL_PROD',
      defaultValue: '',
    );

    if (overrideAll.isNotEmpty) return overrideAll;
    if (overrideProd.isNotEmpty) return overrideProd;

    return 'https://api.yourdomain.com';
  }
}
