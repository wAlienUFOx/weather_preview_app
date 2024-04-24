import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_preview_app/data/data_sources/local/shared_prefs.dart';
import 'package:weather_preview_app/presentation/screens/auth/auth_screen.dart';

import '../blocs/auth_bloc/auth_bloc.dart';
import '../screens/home/home_screen.dart';
import 'app_routes.dart';
import 'go_router_refresh_stream.dart';

class GoRouterConfiguration {
  GoRouterConfiguration({
    required AuthBloc authBloc,
  }) : _authBloc = authBloc;
  GoRouter get router => _goRouter;
  final AuthBloc _authBloc;
  final _rootNavigatorKey = GlobalKey<NavigatorState>();

  late final _goRouter = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: SharedPrefs.userNumber != null ? AppRoutes.home : AppRoutes.auth,
    navigatorKey: _rootNavigatorKey,
    refreshListenable: GoRouterRefreshStream(_authBloc.stream),
    redirect: (context, state) async {
      if (_authBloc.state.isAuthorized){// || !SharedPrefs.isShownOnboard) {
        return null;
      }
      //await Future.delayed(const Duration(seconds: 1));
      return AppRoutes.auth;
    },
    routes: [
      GoRoute(
        path: AppRoutes.home,
        name: AppRoutes.home,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: AppRoutes.auth,
        name: AppRoutes.auth,
        builder: (context, state) => const AuthScreen(),
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
    ],
  );
}
