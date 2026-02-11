import 'dart:convert';

import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/router/app_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/services/fcm_service.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';

part 'deep_link_handler.g.dart';

class DeepLinkHandler {
  const DeepLinkHandler(this._router);

  final GoRouter _router;

  Future<void> handlePayload(FcmMessagePayload payload) async {
    final extraData = payload.parseExtraJson();
    await handle(
      typeCode: payload.type,
      rawData: Map<String, dynamic>.from(payload.rawData),
      extraData: extraData,
    );
  }

  Future<void> handle({
    required String? typeCode,
    Map<String, dynamic>? rawData,
    Map<String, dynamic>? extraData,
  }) async {
    final normalizedType = (typeCode ?? '').trim().toUpperCase();
    final mergedData = <String, dynamic>{...?rawData, ...?extraData};

    switch (normalizedType) {
      case 'CHAT_MESSAGE':
        final roomId = _resolveInt(mergedData, keys: ['roomId', 'targetId']);
        if (roomId == null) {
          AppLogger.w('[DeepLink] CHAT_MESSAGE roomId 없음, 알림 목록으로 이동');
          _router.pushNamed(AppRouterPath.notificationList.name);
          return;
        }

        _router.pushNamed(
          AppRouterPath.chatRoom.name,
          pathParameters: {'id': roomId.toString()},
          extra: const {'fromTicketDetail': false},
        );
        return;
      case 'PAYMENT_REQUEST':
      case 'PAYMENT_SUCCESS':
      case 'PURCHASE_CONFIRMED':
        _router.pushNamed(
          AppRouterPath.transactionHistory.name,
          pathParameters: {'initialIndex': '0'},
        );
        return;
      case 'DISPUTE_OPENED':
      case 'DISPUTE_RESOLVED':
        AppLogger.w('[DeepLink] 분쟁 상세 화면 미구현, 홈으로 이동');
        _router.go(AppRouterPath.home.path);
        return;
      default:
        _router.pushNamed(AppRouterPath.notificationList.name);
    }
  }

  int? _resolveInt(Map<String, dynamic> data, {required List<String> keys}) {
    for (final key in keys) {
      final value = data[key];
      if (value is int) return value;
      if (value is String) {
        final parsed = int.tryParse(value);
        if (parsed != null) return parsed;

        try {
          final decoded = jsonDecode(value);
          if (decoded is Map<String, dynamic>) {
            final nested = decoded[key];
            if (nested is int) return nested;
            if (nested is String) {
              final parsedNested = int.tryParse(nested);
              if (parsedNested != null) return parsedNested;
            }
          }
        } catch (_) {}
      }
    }
    return null;
  }
}

@Riverpod(keepAlive: true)
DeepLinkHandler deepLinkHandler(Ref ref) {
  return DeepLinkHandler(ref.read(goRouterProvider));
}
