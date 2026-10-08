import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:skydrift/features/drift/domain/entities/drift_entity.dart';
import 'package:skydrift/features/drift/presentation/page/drift_detail/drift_detail_page.dart';
import 'package:skydrift/features/drift/presentation/page/drift_gallery/drift_gallery_page.dart';
import 'package:skydrift/features/home/presentation/page/home/home_page.dart';
import 'package:skydrift/routes/app_routes.dart';

part 'typed_routes.g.dart';

@TypedGoRoute<HomeRoute>(
  path: AppRoutes.home,
  name: 'home',
  routes: [
    TypedGoRoute<DriftDetailRoute>(
      path: AppRoutes.driftDetail,
      name: 'driftDetail',
    ),
    TypedGoRoute<DriftGalleryRoute>(
      path: AppRoutes.gallery,
      name: 'gallery',
    ),
  ],
)
class HomeRoute extends GoRouteData with $HomeRoute {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

class DriftDetailRoute extends GoRouteData with $DriftDetailRoute {
  const DriftDetailRoute({required this.$extra});

  final DriftEntity $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DriftDetailPage(drift: $extra);
  }
}

class DriftGalleryRoute extends GoRouteData with $DriftGalleryRoute {
  const DriftGalleryRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DriftGalleryPage();
  }
}
