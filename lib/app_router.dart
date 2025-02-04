import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:play_tracker/ui/home_view.dart';

class RouteNames {
  static const String home = '/';
}

class AppRoutes {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: RouteNames.home,
        builder: (context, state) {

          return const HomeView();
        },
      ),
    ],
    redirect: (context, state) {
      if (![
        RouteNames.home,
      ].contains(state.uri.path)) {
        return RouteNames.home;
      }
      return null;
    },
  );
}