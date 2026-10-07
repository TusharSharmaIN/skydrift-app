import 'package:injectable/injectable.dart';

enum AppFlavor { dev, prod }

@module
abstract class FlavorConfigModule {
  @lazySingleton
  FlavorConfig get flavorConfig => FlavorConfig.instance;
}

class FlavorConfig {
  FlavorConfig._();

  static FlavorConfig? _instance;
  static FlavorConfig get instance {
    assert(_instance != null, 'FlavorConfig has not been initialized');
    return _instance!;
  }

  late final AppFlavor flavor;
  late final String appName;
  late final String baseUrl;

  static void initialize({required AppFlavor flavor}) {
    _instance = FlavorConfig._()
      ..flavor = flavor
      ..appName = _appName(flavor)
      ..baseUrl = _baseUrl(flavor);
  }

  static String _appName(AppFlavor flavor) {
    return switch (flavor) {
      AppFlavor.dev => 'Sky Drift Dev',
      AppFlavor.prod => 'Sky Drift',
    };
  }

  static String _baseUrl(AppFlavor flavor) {
    return switch (flavor) {
      AppFlavor.dev => 'https://api.example.com',
      AppFlavor.prod => 'https://api.example.com',
    };
  }

  bool get isDev => flavor == AppFlavor.dev;
  bool get isProd => flavor == AppFlavor.prod;
}
