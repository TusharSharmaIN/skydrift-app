// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'typed_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$homeRoute];

RouteBase get $homeRoute => GoRouteData.$route(
  path: '/home',
  name: 'home',
  hasOverriddenOnExit: false,
  factory: $HomeRoute._fromState,
  routes: [
    GoRouteData.$route(
      path: 'drift',
      name: 'driftDetail',
      hasOverriddenOnExit: false,
      factory: $DriftDetailRoute._fromState,
    ),
    GoRouteData.$route(
      path: 'gallery',
      name: 'gallery',
      hasOverriddenOnExit: false,
      factory: $DriftGalleryRoute._fromState,
    ),
  ],
);

mixin $HomeRoute on GoRouteData {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  @override
  String get location => GoRouteData.$location('/home');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $DriftDetailRoute on GoRouteData {
  static DriftDetailRoute _fromState(GoRouterState state) =>
      DriftDetailRoute($extra: state.extra as DriftEntity);

  DriftDetailRoute get _self => this as DriftDetailRoute;

  @override
  String get location => GoRouteData.$location('/home/drift');

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin $DriftGalleryRoute on GoRouteData {
  static DriftGalleryRoute _fromState(GoRouterState state) =>
      const DriftGalleryRoute();

  @override
  String get location => GoRouteData.$location('/home/gallery');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
