import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/home/presentation/views/home_view.dart';
import 'package:ticket_platform_mobile/features/event/presentation/view/event_view.dart';
import 'package:ticket_platform_mobile/features/event_sessions/presentation/view/event_session_view.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticketing_view.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/listing_detail/listing_detail_view.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';

part 'app_router.g.dart';

@riverpod
GoRouter goRouter(Ref ref) {
  return GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/event/:id',
        name: 'event',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return EventView(eventId: id);
        },
      ),

      GoRoute(
        path: '/event_sessions/:id',
        name: 'event_sessions',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return EventSessionView(eventSessionId: id);
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
        path: '${AppRouterPath.listingDetail}/:perfId/:listId',
        name: 'listingDetail',
        builder: (context, state) {
          final perfId = state.pathParameters['perfId']!;
          final listId = state.pathParameters['listId']!;
          return ListingDetailView(performanceId: perfId, listingId: listId);
        },
      ),
    ],
  );
}
