import 'package:cat_app/features/cat/presentation/views/cats_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) {
          return const CatsView();
        },
      ),
    ],
  );
}
