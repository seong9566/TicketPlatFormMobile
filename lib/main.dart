import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/firebase_options.dart';

import 'package:ticket_platform_mobile/core/router/app_router.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    AppLogger.i('[Firebase] initialized');
  } catch (e) {
    AppLogger.e('[Firebase] initialization failed', e);
  }

  try {
    await dotenv.load(fileName: '.env');
  } catch (e) {
    AppLogger.w('[Env] .env file load failed: $e');
  }

  final kakaoNativeAppKey = (dotenv.env['KAKAO_NATIVE_APP_KEY'] ?? '').trim();

  if (kakaoNativeAppKey.isNotEmpty) {
    KakaoSdk.init(nativeAppKey: kakaoNativeAppKey);
    AppLogger.i('[Kakao] SDK initialized');
  } else {
    AppLogger.w(
      '[Kakao] KAKAO_NATIVE_APP_KEY is empty in .env. Kakao login disabled.',
    );
  }

  await initializeDateFormatting();

  runApp(
    ProviderScope(
      // Riverpod3.0에 자동 재시도 로직이 생김 개발 시에는 필요가 없음.
      retry: (retryCount, error) {
        return null;
      },
      child: TicketPlatformApp(),
    ),
  );
}

class TicketPlatformApp extends ConsumerWidget {
  const TicketPlatformApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);

    return MaterialApp.router(
      title: 'TicketSwap',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.background,
          surfaceTintColor: Colors.transparent,
          scrolledUnderElevation: 0,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: AppTextStyles.heading2,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          primary: AppColors.primary,
          secondary: AppColors.secondary,
          surface: AppColors.background,
        ),
        textTheme: const TextTheme(
          displayLarge: AppTextStyles.heading1,
          displayMedium: AppTextStyles.heading2,
          bodyLarge: AppTextStyles.body1,
          bodyMedium: AppTextStyles.body2,
        ),
        useMaterial3: true,
      ),
      routerConfig: router,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en'), Locale('ko')],
    );
  }
}
