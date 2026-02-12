import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/services/fcm_service.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';

part 'local_notification_service.g.dart';

class LocalNotificationTapPayload {
  const LocalNotificationTapPayload({
    required this.typeCode,
    required this.rawData,
    required this.extraData,
  });

  final String? typeCode;
  final Map<String, dynamic> rawData;
  final Map<String, dynamic> extraData;

  String toRaw() {
    return jsonEncode({
      'typeCode': typeCode,
      'rawData': rawData,
      'extraData': extraData,
    });
  }

  static LocalNotificationTapPayload? fromRaw(String? raw) {
    if (raw == null || raw.trim().isEmpty) {
      return null;
    }

    try {
      final decoded = jsonDecode(raw);
      if (decoded is! Map<String, dynamic>) {
        return null;
      }

      return LocalNotificationTapPayload(
        typeCode: decoded['typeCode']?.toString(),
        rawData: _asStringDynamicMap(decoded['rawData']),
        extraData: _asStringDynamicMap(decoded['extraData']),
      );
    } catch (e) {
      AppLogger.w('[LocalNotification] payload 파싱 실패: $e');
      return null;
    }
  }

  static Map<String, dynamic> _asStringDynamicMap(dynamic value) {
    if (value is Map<String, dynamic>) {
      return value;
    }
    if (value is Map) {
      return value.map((key, val) => MapEntry('$key', val));
    }
    return {};
  }
}

class ChatNotificationPresentation {
  const ChatNotificationPresentation({
    this.profileImageUrl,
    this.ticketTitle,
    this.message,
  });

  final String? profileImageUrl;
  final String? ticketTitle;
  final String? message;
}

class LocalNotificationService {
  LocalNotificationService(this._plugin);

  final FlutterLocalNotificationsPlugin _plugin;

  static const String _channelId = 'ticket_hub_high_importance';
  static const String _channelName = '중요 알림';
  static const String _channelDescription = '채팅/거래 관련 중요 알림';

  bool _isInitialized = false;
  int _fallbackNotificationId = 0;

  Future<void> initialize({
    required Future<void> Function(LocalNotificationTapPayload payload)
    onNotificationTap,
  }) async {
    if (_isInitialized) {
      return;
    }

    const androidInitSettings = AndroidInitializationSettings(
      '@mipmap/ic_launcher',
    );
    const iosInitSettings = DarwinInitializationSettings(
      requestAlertPermission: false,
      requestBadgePermission: false,
      requestSoundPermission: false,
    );

    const settings = InitializationSettings(
      android: androidInitSettings,
      iOS: iosInitSettings,
    );

    await _plugin.initialize(
      settings: settings,
      onDidReceiveNotificationResponse: (response) {
        final tapPayload = LocalNotificationTapPayload.fromRaw(
          response.payload,
        );
        if (tapPayload == null) {
          return;
        }

        unawaited(onNotificationTap(tapPayload));
      },
    );

    final androidPlugin = _plugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >();

    if (androidPlugin != null) {
      await androidPlugin.createNotificationChannel(
        const AndroidNotificationChannel(
          _channelId,
          _channelName,
          description: _channelDescription,
          importance: Importance.max,
        ),
      );
    }

    _isInitialized = true;
  }

  Future<void> showFromFcm(
    FcmMessagePayload payload, {
    ChatNotificationPresentation? chatPresentation,
  }) async {
    if (!_isInitialized) {
      return;
    }

    final title = _resolveTitle(payload, chatPresentation: chatPresentation);
    final body = _resolveBody(payload, chatPresentation: chatPresentation);

    final androidDetails = await _buildAndroidNotificationDetails(
      payload: payload,
      title: title,
      body: body,
      chatPresentation: chatPresentation,
    );

    final details = NotificationDetails(
      android: androidDetails,
      iOS: const DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      ),
    );

    final tapPayload = LocalNotificationTapPayload(
      typeCode: payload.type,
      rawData: Map<String, dynamic>.from(payload.rawData),
      extraData: payload.parseExtraJson(),
    );

    await _plugin.show(
      id: _nextNotificationId(payload.messageId),
      title: title,
      body: body,
      notificationDetails: details,
      payload: tapPayload.toRaw(),
    );
  }

  Future<AndroidNotificationDetails> _buildAndroidNotificationDetails({
    required FcmMessagePayload payload,
    required String title,
    required String body,
    ChatNotificationPresentation? chatPresentation,
  }) async {
    final isChatMessage = payload.normalizedType == 'CHAT_MESSAGE';
    final largeIcon = isChatMessage
        ? await _loadProfileLargeIcon(chatPresentation?.profileImageUrl)
        : null;

    return AndroidNotificationDetails(
      _channelId,
      _channelName,
      channelDescription: _channelDescription,
      importance: Importance.max,
      priority: Priority.high,
      channelAction: AndroidNotificationChannelAction.createIfNotExists,
      playSound: true,
      enableVibration: true,
      icon: '@mipmap/ic_launcher',
      largeIcon: largeIcon,
      styleInformation: isChatMessage
          ? BigTextStyleInformation(
              body,
              contentTitle: title,
              summaryText: '채팅 메시지',
            )
          : null,
    );
  }

  Future<AndroidBitmap<Object>?> _loadProfileLargeIcon(String? imageUrl) async {
    final trimmedUrl = (imageUrl ?? '').trim();
    if (trimmedUrl.isEmpty) {
      return null;
    }

    final uri = Uri.tryParse(trimmedUrl);
    if (uri == null ||
        !(uri.scheme.toLowerCase() == 'http' ||
            uri.scheme.toLowerCase() == 'https')) {
      return null;
    }

    HttpClient? client;
    try {
      client = HttpClient()..connectionTimeout = const Duration(seconds: 5);

      final request = await client.getUrl(uri);
      final response = await request.close().timeout(
        const Duration(seconds: 6),
      );

      if (response.statusCode < 200 || response.statusCode >= 300) {
        return null;
      }

      final bytesBuilder = BytesBuilder(copy: false);
      await for (final chunk in response) {
        bytesBuilder.add(chunk);
        if (bytesBuilder.length > 1024 * 1024) {
          AppLogger.w('[LocalNotification] profile image too large, skip icon');
          return null;
        }
      }

      final bytes = bytesBuilder.takeBytes();
      if (bytes.isEmpty) {
        return null;
      }

      return ByteArrayAndroidBitmap(Uint8List.fromList(bytes));
    } catch (e) {
      AppLogger.w('[LocalNotification] profile image load 실패: $e');
      return null;
    } finally {
      client?.close(force: true);
    }
  }

  int _nextNotificationId(String? messageId) {
    if (messageId != null && messageId.isNotEmpty) {
      final hash = messageId.hashCode & 0x7fffffff;
      if (hash > 0) {
        return hash;
      }
    }

    _fallbackNotificationId = (_fallbackNotificationId + 1) & 0x7fffffff;
    if (_fallbackNotificationId == 0) {
      _fallbackNotificationId = 1;
    }
    return _fallbackNotificationId;
  }

  String _resolveTitle(
    FcmMessagePayload payload, {
    ChatNotificationPresentation? chatPresentation,
  }) {
    if (payload.normalizedType == 'CHAT_MESSAGE') {
      final ticketTitle = (chatPresentation?.ticketTitle ?? '').trim();
      if (ticketTitle.isNotEmpty) {
        return ticketTitle;
      }
    }

    final notificationTitle = (payload.title ?? '').trim();
    if (notificationTitle.isNotEmpty) {
      return notificationTitle;
    }

    final dataTitle = payload.rawData['title']?.toString().trim() ?? '';
    if (dataTitle.isNotEmpty) {
      return dataTitle;
    }

    final typeName = payload.rawData['typeName']?.toString().trim() ?? '';
    if (typeName.isNotEmpty) {
      return typeName;
    }

    return '새 알림';
  }

  String _resolveBody(
    FcmMessagePayload payload, {
    ChatNotificationPresentation? chatPresentation,
  }) {
    if (payload.normalizedType == 'CHAT_MESSAGE') {
      final chatMessage = (chatPresentation?.message ?? '').trim();
      if (chatMessage.isNotEmpty) {
        return chatMessage;
      }
    }

    final notificationBody = (payload.body ?? '').trim();
    if (notificationBody.isNotEmpty) {
      return notificationBody;
    }

    final dataBody = payload.rawData['body']?.toString().trim() ?? '';
    if (dataBody.isNotEmpty) {
      return dataBody;
    }

    return '알림이 도착했습니다.';
  }
}

@Riverpod(keepAlive: true)
LocalNotificationService localNotificationService(Ref ref) {
  return LocalNotificationService(FlutterLocalNotificationsPlugin());
}
