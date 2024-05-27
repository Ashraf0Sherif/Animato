import 'package:animato/features/auth/presentation/login_view.dart';
import 'package:animato/features/auth/presentation/register_view.dart';
import 'package:animato/features/home/presentation/home_view.dart';
import 'package:go_router/go_router.dart';

import 'zoom_navigation.dart';
import '../../features/splash/presentation/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = "/homeView";
  static const kLoginView = "/LoginView";
  static const kRegisterView = "/registerView";
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        pageBuilder: (context, state) {
          return ZoomTransitionPage(child: const HomeView());
        },
      ),
      GoRoute(
        path: kLoginView,
        pageBuilder: (context, state) {
          return ZoomTransitionPage(child: const LoginView());
        },
      ),
      GoRoute(
        path: kRegisterView,
        pageBuilder: (context, state) {
          return ZoomTransitionPage(child: const RegisterView());
        },
      ),
    ],
  );
}
