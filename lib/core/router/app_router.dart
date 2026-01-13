import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/enums/category.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/view/chat_room_view.dart';
import 'package:ticket_platform_mobile/features/home/presentation/views/main_tab_view.dart';
import 'package:ticket_platform_mobile/features/events/presentation/view/events_view.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticketing_view.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticket_detail/ticket_detail_view.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/view/login_view.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/view/find_id_view.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/view/find_password_view.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/view/sign_up_view.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/views/sell_event_selection_view.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/views/sell_ticket_category_view.dart';
import 'package:ticket_platform_mobile/features/splash/presentation/view/splash_view.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';

part 'app_router.g.dart';

@riverpod
GoRouter goRouter(Ref ref) {
  return GoRouter(
    initialLocation: AppRouterPath.splash,
    routes: [
      GoRoute(
        path: AppRouterPath.splash,
        name: 'splash',
        builder: (context, state) =>
            const SplashView(), // Added import for SplashView
      ),
      GoRoute(
        path: AppRouterPath.home,
        name: 'home',
        builder: (context, state) => const MainTabView(),
      ),

      /// 공연 목록 화면
      /// queryParam: category (선택)
      GoRoute(
        path: AppRouterPath.events,
        name: 'events',
        builder: (context, state) {
          final category = state.uri.queryParameters['category'];
          return EventsView(category: category);
        },
      ),

      /// 채팅방 화면
      /// pathParam: id (채팅방 ID)
      GoRoute(
        path: '${AppRouterPath.chatRoom}/:id',
        name: 'chatRoom',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return ChatRoomView(chatRoomId: id);
        },
      ),

      /// 공연 예매 목록 화면
      /// 파라미터:
      /// - performanceId: 공연(이벤트) ID
      GoRoute(
        path: '${AppRouterPath.ticketing}/:perfId',
        builder: (context, state) =>
            TicketingView(performanceId: state.pathParameters['perfId'] ?? '0'),
      ),

      /// 티켓 상세 정보 화면
      /// 파라미터:
      /// - listId: 티켓 목록 ID (ticketId)
      GoRoute(
        path: '${AppRouterPath.ticketDetail}/:listId',
        builder: (context, state) =>
            TicketDetailView(listingId: state.pathParameters['listId'] ?? '0'),
      ),

      /// 로그인 화면
      GoRoute(
        path: AppRouterPath.login,
        name: 'login',
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: AppRouterPath.findId,
        name: 'findId',
        builder: (context, state) => const FindIdView(),
      ),
      GoRoute(
        path: AppRouterPath.findPassword,
        name: 'findPassword',
        builder: (context, state) => const FindPasswordView(),
      ),

      /// 티켓 판매 카테고리 선택 화면
      GoRoute(
        path: AppRouterPath.sellTicketCategory,
        name: 'sellTicketCategory',
        builder: (context, state) => const SellTicketCategoryView(),
      ),

      /// 티켓 판매 공연 선택 화면
      /// pathParam: category (카테고리)
      GoRoute(
        path: '${AppRouterPath.sellEventSelection}/:category',
        name: 'sellEventSelection',
        builder: (context, state) {
          final categoryCode = state.pathParameters['category'] ?? '';
          final category = Category.fromCode(categoryCode);
          return SellEventSelectionView(category: category);
        },
      ),

      GoRoute(
        path: AppRouterPath.signUp,
        name: 'signUp',
        builder: (context, state) => const SignUpView(),
      ),
    ],
  );
}
