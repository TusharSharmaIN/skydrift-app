import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:skydrift/features/home/presentation/page/home_page.dart';
import 'package:skydrift/routes/app_routes.dart';

part 'typed_routes.g.dart';

@TypedGoRoute<HomeRoute>(path: AppRoutes.home, name: 'home')
class HomeRoute extends GoRouteData with $HomeRoute {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}
