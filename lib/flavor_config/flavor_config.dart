import 'dart:io';

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
      AppFlavor.dev || AppFlavor.prod => _localApiUrl(),
    };
  }

  static String _localApiUrl() {
    const overrideHost = String.fromEnvironment('API_HOST');
    if (overrideHost.isNotEmpty) {
      return 'http://$overrideHost:3000/api';
    }
    if (Platform.isAndroid) {
      return 'http://10.0.2.2:3000/api';
    }
    return 'http://localhost:3000/api';
  }

  String get assetOrigin {
    if (baseUrl.endsWith('/api')) {
      return baseUrl.substring(0, baseUrl.length - 4);
    }
    return baseUrl;
  }

  String resolveMediaUrl(String path) {
    if (path.startsWith('http://') || path.startsWith('https://')) {
      return path;
    }
    if (path.startsWith('/')) {
      return '$assetOrigin$path';
    }
    return '$assetOrigin/$path';
  }

  bool get isDev => flavor == AppFlavor.dev;
  bool get isProd => flavor == AppFlavor.prod;
}
