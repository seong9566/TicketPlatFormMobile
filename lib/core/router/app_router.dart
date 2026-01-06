import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/view/chat_view.dart';
import 'package:ticket_platform_mobile/features/home/presentation/views/home_view.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticketing_view.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticket_detail/ticket_detail_view.dart';
import 'package:ticket_platform_mobile/features/events/presentation/view/events_view.dart';
import 'package:ticket_platform_mobile/features/wishlist/presentation/view/wishlist_view.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';

part 'app_router.g.dart';

@riverpod
GoRouter goRouter(Ref ref) {
  return GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(
        path: AppRouterPath.home,
        name: 'home',
        builder: (context, state) => const HomeView(),
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
        path: AppRouterPath.wishlist,
        name: 'wishlist',
        builder: (context, state) => const WishlistView(),
      ),
      GoRoute(
        path: AppRouterPath.chat,
        name: 'chat',
        builder: (context, state) => const ChatView(),
      ),
    ],
  );
}
