import 'package:archemlab/routes/navigation_constants.dart';
import 'package:archemlab/screens/details_screen.dart';
import 'package:archemlab/screens/home_screen.dart';
import 'package:archemlab/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static GoRouter get router => _router;
  static final GoRouter _router = GoRouter(navigatorKey: _rootNavigatorKey, initialLocation: SCREEN.splash.path, routes: [
    GoRoute(
      path: SCREEN.splash.path,
      name: SCREEN.splash.screenName,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: SCREEN.home.path,
      name: SCREEN.home.screenName,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: SCREEN.details.path,
      name: SCREEN.details.screenName,
      builder: (context, state) {
        final extras = state.extra as Map<String, String>?;

        final title = extras?['title'] ?? 'No Title';
        final imagePath = extras?['imagePath'] ?? '';

        return DetailsScreen(
          title: title,
          imagePath: imagePath,
        );
      },
    ),
  ]);
}
