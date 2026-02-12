import 'dart:async';
import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';

part 'fcm_service.g.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  AppLogger.i('[FCM] Background message received: ${message.messageId}');
}

class FcmMessagePayload {
  const FcmMessagePayload({
    required this.rawData,
    this.messageId,
    this.title,
    this.body,
    this.type,
    this.targetId,
    this.extra,
  });

  final String? messageId;
  final String? title;
  final String? body;
  final String? type;
  final String? targetId;
  final String? extra;
  final Map<String, dynamic> rawData;

  factory FcmMessagePayload.fromRemoteMessage(RemoteMessage message) {
    final data = message.data;
    return FcmMessagePayload(
      messageId: message.messageId,
      title: message.notification?.title,
      body: message.notification?.body,
      type: data['type'] ?? data['typeCode'],
      targetId: data['targetId'],
      extra: data['extra'] ?? data['data'],
      rawData: data,
    );
  }

  String get normalizedType => (type ?? '').trim().toUpperCase();

  Map<String, dynamic> parseExtraJson() {
    final raw = extra;
    if (raw == null || raw.trim().isEmpty) {
      return {};
    }

    try {
      final decoded = jsonDecode(raw);
      if (decoded is Map<String, dynamic>) {
        return decoded;
      }
      return {};
    } catch (e) {
      AppLogger.w('[FCM] Failed to parse extra json: $e');
      return {};
    }
  }

  int? get roomId => _resolveInt(['roomId']);

  int? _resolveInt(List<String> keys) {
    final parsedExtra = parseExtraJson();

    for (final key in keys) {
      final fromRawData = rawData[key];
      if (fromRawData != null) {
        final parsed = int.tryParse(fromRawData);
        if (parsed != null) return parsed;
      }

      final fromExtra = parsedExtra[key];
      if (fromExtra is int) return fromExtra;
      if (fromExtra is String) {
        final parsed = int.tryParse(fromExtra);
        if (parsed != null) return parsed;
      }
    }

    final fromTargetId = targetId;
    if (fromTargetId != null) {
      return int.tryParse(fromTargetId);
    }

    return null;
  }
}

class FcmService {
  FcmService(this._messaging);

  final FirebaseMessaging _messaging;
  StreamSubscription<RemoteMessage>? _onMessageSubscription;
  StreamSubscription<RemoteMessage>? _onMessageOpenedSubscription;
  bool _isInitialized = false;

  Future<void> initialize({
    required void Function(FcmMessagePayload payload) onForegroundMessage,
    required Future<void> Function(FcmMessagePayload payload)
    onMessageOpenedApp,
  }) async {
    if (_isInitialized) {
      return;
    }

    await _requestPermission();
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    await _messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    _onMessageSubscription = FirebaseMessaging.onMessage.listen((message) {
      final payload = FcmMessagePayload.fromRemoteMessage(message);
      AppLogger.i(
        '[FCM] Foreground message received: ${payload.normalizedType}',
      );
      onForegroundMessage(payload);
    });

    _onMessageOpenedSubscription = FirebaseMessaging.onMessageOpenedApp.listen((
      message,
    ) {
      final payload = FcmMessagePayload.fromRemoteMessage(message);
      AppLogger.i('[FCM] onMessageOpenedApp: ${payload.normalizedType}');
      unawaited(onMessageOpenedApp(payload));
    });

    // Initial message 처리 제거
    // 앱 재시작 시 홈 화면으로 이동하도록 하기 위해 주석 처리
    // final initialMessage = await _messaging.getInitialMessage();
    // if (initialMessage != null) {
    //   final payload = FcmMessagePayload.fromRemoteMessage(initialMessage);
    //   AppLogger.i('[FCM] Initial message opened: ${payload.normalizedType}');
    //   await onMessageOpenedApp(payload);
    // }

    _isInitialized = true;
  }

  Future<String?> getToken() async {
    final token = await _messaging.getToken();
    final tokenPreview = token == null
        ? 'null'
        : (token.length <= 16 ? token : '${token.substring(0, 16)}...');
    AppLogger.i('[FCM] Token acquired: $tokenPreview');
    return token;
  }

  Stream<String> get onTokenRefresh => _messaging.onTokenRefresh;

  Future<void> _requestPermission() async {
    final settings = await _messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
    AppLogger.i('[FCM] Permission status: ${settings.authorizationStatus}');
  }

  void dispose() {
    _onMessageSubscription?.cancel();
    _onMessageOpenedSubscription?.cancel();
  }
}

@Riverpod(keepAlive: true)
FcmService fcmService(Ref ref) {
  final service = FcmService(FirebaseMessaging.instance);
  ref.onDispose(service.dispose);
  return service;
}
