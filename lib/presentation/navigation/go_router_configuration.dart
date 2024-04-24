import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/home/home_screen.dart';
import 'app_routes.dart';

class GoRouterConfiguration {
  GoRouterConfiguration();//{required AuthBloc authBloc})
      //: _authBloc = authBloc;

  GoRouter get router => _goRouter;
  final _rootNavigatorKey = GlobalKey<NavigatorState>();
  //final AuthBloc _authBloc;

  late final _goRouter = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: AppRoutes.home,
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: AppRoutes.home,
        name: AppRoutes.home,
        builder: (context, state) => const HomeScreen(),
      ),
      // GoRoute(
      //   path: AppRoutes.splash,
      //   name: AppRoutes.splash,
      //   builder: (context, state) => const SplashScreen(),
      // ),
      // GoRoute(
      //   path: AppRoutes.auth,
      //   name: AppRoutes.auth,
      //   builder: (context, state) => const AuthScreen(),
      // ),
      // GoRoute(
      //   path: AppRoutes.details,
      //   name: AppRoutes.details,
      //   builder: (context, state) {
      //     if (state.extra is int) {
      //       final routeId = state.extra as int;
      //       return FavoriteRouteScreen(routeId: routeId);
      //     } else {
      //       throw Exception('AppRoutes.favorite - state.extra is not int');
      //     }
      //   },
      // ),
    ],
  );
}
