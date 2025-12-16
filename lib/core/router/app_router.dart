import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/home/presentation/views/home_view.dart';
import 'package:ticket_platform_mobile/features/category/presentation/view/category_view.dart';
import 'package:ticket_platform_mobile/features/artist/presentation/view/artist_detail_view.dart';

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
        path: '/category/:id',
        name: 'category',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return CategoryView(categoryId: id);
        },
      ),
      GoRoute(
        path: '/artist/:id',
        name: 'artist',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return ArtistDetailView(artistId: id);
        },
      ),
    ],
  );
}
