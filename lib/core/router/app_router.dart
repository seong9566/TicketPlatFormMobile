import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/view/chat_room_view.dart';
import 'package:ticket_platform_mobile/features/home/presentation/views/main_tab_view.dart';
import 'package:ticket_platform_mobile/features/events/presentation/view/events_view.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticketing_view.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticket_detail/ticket_detail_view.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/view/login_view.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/view/find_id_view.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/view/find_password_view.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/view/sign_up_view.dart'; // Added import for SignUpView
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';

part 'app_router.g.dart';

@riverpod
GoRouter goRouter(Ref ref) {
  return GoRouter(
    initialLocation: AppRouterPath.login,
    routes: [
      GoRoute(
        path: AppRouterPath.home,
        name: 'home',
        builder: (context, state) => const MainTabView(),
      ),
      GoRoute(
        path: AppRouterPath.events,
        name: 'events',
        builder: (context, state) {
          final category = state.uri.queryParameters['category'];
          return EventsView(category: category);
        },
      ),
      GoRoute(
        path: '${AppRouterPath.chatRoom}/:id',
        name: 'chatRoom',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return ChatRoomView(chatRoomId: id);
        },
      ),
      GoRoute(
        path: '${AppRouterPath.ticketing}/:id',
        name: 'ticketing',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return TicketingView(performanceId: id);
        },
      ),
      GoRoute(
        path: '${AppRouterPath.ticketDetail}/:perfId/:listId',
        name: 'ticketDetail',
        builder: (context, state) {
          final perfId = state.pathParameters['perfId']!;
          final listId = state.pathParameters['listId']!;
          return TicketDetailView(performanceId: perfId, listingId: listId);
        },
      ),
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
      GoRoute(
        path: AppRouterPath.signUp,
        name: 'signUp',
        builder: (context, state) => const SignUpView(),
      ),
    ],
  );
}
