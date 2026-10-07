import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:go_router/go_router.dart';

import 'package:skydrift/features/splash/presentation/page/splash_page.dart';
import 'package:skydrift/routes/app_routes.dart';
import 'package:skydrift/routes/typed_routes.dart';

export 'package:skydrift/routes/app_routes.dart';

final rootNavigatorKey = ChuckerFlutter.navigatorKey;

class AppRouter {
  static final GoRouter router = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        name: 'splash',
        builder: (context, state) => const SplashPage(),
      ),
      ...$appRoutes,
    ],
  );
}
