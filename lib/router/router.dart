// GoRouter configuration
import 'package:go_router/go_router.dart';
import 'package:riverpodtest/pages/home/home_page.dart';
import 'package:riverpodtest/pages/splash_page.dart';

enum AppRoute { splash, home }

final router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: "/home",
      builder: (context, state) => const HomePage(),
    ),
  ],
);
